#!/bin/bash
# ------------------------------------------------------------------
# Script: startup-multiple-namespaces.sh
# Purpose: Bring up selected applications (scale to desired replica count)
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

CUSTOM_DEPLOYMENTS=(
  "prod-dr-admin:admin-adminservice"
  "prod-dr-frontend:transactionfe-transaction-frontend"
  "prod-dr-kms:kms-kmsservice"
  "prod-dr-simulators:demo-merchantsimulator,javasimulator-javautilityapisimulator"
  "prod-dr-transaction:payment-paymentservice,txn-transactionservice"
)

SCALE_TO=1
TARGETS="deployments statefulsets"
OC_BIN="oc"

echo "==========================================="
echo " Application Startup Script (No Prompt Mode)"
echo "==========================================="

for ns in "${NAMESPACES[@]}"; do
  echo ""
  echo ">>> Processing namespace: $ns"

  # Switch to project
  $OC_BIN project "$ns" >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "⚠️  Failed to switch to namespace $ns. Skipping..."
    continue
  fi

  custom_entry=$(printf "%s\n" "${CUSTOM_DEPLOYMENTS[@]}" | grep "^$ns:" || true)
  deployments_list=$(echo "$custom_entry" | cut -d':' -f2 | tr ',' ' ')

  for target in $TARGETS; do
    echo "→ Scaling up $target in namespace $ns ..."
    for d in $deployments_list; do
      if [ -n "$d" ]; then
        echo "   - Scaling up $target/$d to $SCALE_TO"
        $OC_BIN scale $target "$d" --replicas=$SCALE_TO -n "$ns"
      fi
    done
  done

  echo "✅ Completed namespace: $ns"
  echo "-------------------------------------------"
done

echo ""
echo "🎯 All selected namespaces have been successfully scaled up to $SCALE_TO replicas."

# ====== STATUS CHECK SECTION ======
echo ""
echo "==========================================="
echo " Checking Deployment Status After Startup "
echo "==========================================="
for ns in "${NAMESPACES[@]}"; do
  echo ""
  echo ">>> Namespace: $ns"
  $OC_BIN get deploy -n "$ns" | awk 'NR==1 || /NAME|[1-9]/ {print}'
done

echo ""
echo "✅ Status check completed for all namespaces."
