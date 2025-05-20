#!/bin/ash

# opensync_disabler.sh
# Disable Opensync and related services, and patch init scripts
# Compatible with ash shell (BusyBox)

set -e

SERVICES="healthcheck opensync jioWifiManagerStartup jioDscpPriority jioWifiNotifierStartup jioWifiLoggerStartup"

echo "[*] Disabling services..."
for svc in $SERVICES; do
    if [ -x "/etc/init.d/$svc" ]; then
        echo "  -> Disabling $svc"
        /etc/init.d/$svc stop 2>/dev/null || true
        /etc/init.d/$svc disable 2>/dev/null || true
        chmod -x "/etc/init.d/$svc"
    else
        echo "  !! Service $svc not found or not executable"
    fi
done

echo "[*] Patching init scripts..."

patch_plumeConfigMerge() {
    SCRIPT="/etc/init.d/plumeConfigMerge"
    [ -f "$SCRIPT" ] || return
    cp "$SCRIPT" "$SCRIPT.bak"

    # Replace all PlumeEnabled assignments with 0
    sed -i 's/PlumeEnabled="1"/PlumeEnabled="0"/g' "$SCRIPT"
    sed -i 's/PlumeEnabled=".*"/PlumeEnabled="0"/g' "$SCRIPT"
}

patch_platformConfigMerge() {
    SCRIPT="/etc/init.d/platformConfigMerge"
    [ -f "$SCRIPT" ] || return
    cp "$SCRIPT" "$SCRIPT.bak"

    sed -i 's/PlumeEnabled="1"/PlumeEnabled="0"/g' "$SCRIPT"
    sed -i 's/PlumeEnabled=".*"/PlumeEnabled="0"/g' "$SCRIPT"
}

patch_opensync() {
    SCRIPT="/etc/init.d/opensync"
    [ -f "$SCRIPT" ] || return
    cp "$SCRIPT" "$SCRIPT.bak"

    # Replace the opensync_service_enabled function completely using sed range and cat
    awk '
    BEGIN {skip=0}
    /^opensync_service_enabled\(\)/ {print "opensync_service_enabled() {\n    false\n}"; skip=1; next}
    skip && /^\}/ {skip=0; next}
    !skip {print}
    ' "$SCRIPT.bak" > "$SCRIPT"
}

patch_plumeConfigMerge
patch_platformConfigMerge
patch_opensync

echo "[*] Done. All services disabled and init scripts patched."
echo "[*] Please reboot the device for changes to take effect."
