#!/bin/bash
# ------------------------------------------------------------------
# Script: dr-management.sh
# Purpose: Unified Disaster Recovery management script
# Actions: Bring Down / Bring Up / Check Status (for multiple namespaces)
# Author: Saadi
# ------------------------------------------------------------------

# ====== USER CONFIGURATION ======
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

TARGETS="deployments statefulsets"
OC_BIN="oc"

# ====== SAFETY MODE ======
# Toggle to true for testing (no actual scaling commands executed)
DRY_RUN=false

# ====== FUNCTIONS ======

scale_apps() {
  local action=$1
  local replicas=$2
  echo "==========================================="
  echo " Performing $action (scale to $replicas) "
  echo "==========================================="

  for ns in "${NAMESPACES[@]}"; do
    echo ""
    echo ">>> Processing namespace: $ns"

    $OC_BIN project "$ns" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
      echo "⚠️  Failed to switch to namespace $ns. Skipping..."
      continue
    fi

    custom_entry=$(printf "%s\n" "${CUSTOM_DEPLOYMENTS[@]}" | grep "^$ns:" || true)
    deployments_list=$(echo "$custom_entry" | cut -d':' -f2 | tr ',' ' ')

    for target in $TARGETS; do
      echo "→ Scaling $target in namespace $ns ..."
      for d in $deployments_list; do
        if [ -n "$d" ]; then
          if [ "$DRY_RUN" = true ]; then
            echo "   ⚙️ [DRY-RUN] oc scale $target $d --replicas=$replicas -n $ns"
          else
            echo "   - Scaling $target/$d to $replicas"
            $OC_BIN scale $target "$d" --replicas=$replicas -n "$ns"
          fi
        fi
      done
    done

    echo "✅ Completed namespace: $ns"
    echo "-------------------------------------------"
  done

  echo ""
  echo "🎯 All namespaces processed for $action."
}

check_status() {
  echo ""
  echo "==========================================="
  echo " Checking Deployment Status "
  echo "==========================================="
  for ns in "${NAMESPACES[@]}"; do
    echo ""
    echo ">>> Namespace: $ns"
    $OC_BIN get deploy -n "$ns"
  done
  echo ""
  echo "✅ Status check completed for all namespaces."
}

# ====== MAIN MENU ======
clear
echo "==========================================="
echo " 🔧 Disaster Recovery Management Script "
echo "==========================================="
echo "Choose an option:"
echo "1) Bring DOWN all applications  (scale to 0)"
echo "2) Bring UP all applications    (scale to 1)"
echo "3) Check Deployment Status Only"
echo "4) Exit"
echo "-------------------------------------------"
read -p "Enter your choice [1-4]: " choice

case $choice in
  1)
    scale_apps "Shutdown" 0
    check_status
    ;;
  2)
    scale_apps "Startup" 1
    check_status
    ;;
  3)
    check_status
    ;;
  4)
    echo "Exiting script. Goodbye!"
    exit 0
    ;;
  *)
    echo "❌ Invalid choice. Please run the script again."
    ;;
esac
