#!/bin/bash
# ------------------------------------------------------------------
# Script: startup-multiple-namespaces.sh
# Purpose: Bring up selected applications (scale back to 1 replica)
# Author: Saadi
# ------------------------------------------------------------------

# ====== CONFIGURATION ======
NAMESPACES=(
  "prod-dr-admin"
  "prod-dr-frontend"
  "prod-dr-kms"
  "prod-dr-simulators"
  "prod-dr-transaction"
)

# Deployments per namespace with desired replica count
CUSTOM_DEPLOYMENTS=(
  "prod-dr-admin:admin-adminservice=1"
  "prod-dr-frontend:transactionfe-transaction-frontend=1"
  "prod-dr-kms:kms-kmsservice=1"
  "prod-dr-simulators:demo-merchantsimulator=1,javasimulator-javautilityapisimulator=1"
  "prod-dr-transaction:payment-paymentservice=1,txn-transactionservice=1"
)

TARGETS="deployments statefulsets"
OC_BIN="oc"

echo "==========================================="
echo " Application Startup Script "
echo "==========================================="

for ns in "${NAMESPACES[@]}"; do
  echo ""
  echo ">>> Processing namespace: $ns"

  read -p "Are you sure you want to scale up namespace '$ns'? (y/n): " confirm
  if [[ "$confirm" != "y" ]]; then
    echo "Skipping namespace $ns..."
    continue
  fi

  $OC_BIN project "$ns" >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "⚠️  Failed to switch to namespace $ns. Skipping..."
    continue
  fi

  custom_entry=$(printf "%s\n" "${CUSTOM_DEPLOYMENTS[@]}" | grep "^$ns:" || true)
  deploys=$(echo "$custom_entry" | cut -d':' -f2 | tr ',' '\n')

  for item in $deploys; do
    dname=$(echo "$item" | cut -d'=' -f1)
    replicas=$(echo "$item" | cut -d'=' -f2)
    for target in $TARGETS; do
      echo "   - Scaling up $target/$dname to $replicas"
      $OC_BIN scale $target "$dname" --replicas=$replicas -n "$ns"
    done
  done

  echo "✅ Completed namespace: $ns"
  echo "-------------------------------------------"
done

echo ""
echo "🎯 All selected namespaces have been brought up."
