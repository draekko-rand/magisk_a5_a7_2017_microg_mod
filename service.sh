#!/system/bin/sh

# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# Wait until is boot completed
until [ "$(getprop sys.boot_completed)" = 1 ]
do
  sleep 1
done

echo "Setting microG app permissions [start]"

pm grant --user 0 com.android.vending android.permission.FAKE_PACKAGE_SIGNATURE
pm grant --user 0 com.google.android.gms android.permission.FAKE_PACKAGE_SIGNATURE
pm grant --user 0 com.google.android.gms android.permission.ACCESS_FINE_LOCATION
pm grant --user 0 com.google.android.gms android.permission.ACCESS_BACKGROUND_LOCATION
pm grant --user 0 com.google.android.gms android.permission.WRITE_EXTERNAL_STORAGE
pm grant --user 0 com.google.android.gms android.permission.READ_PHONE_STATE

pm grant com.android.vending android.permission.FAKE_PACKAGE_SIGNATURE
pm grant com.google.android.gms android.permission.FAKE_PACKAGE_SIGNATURE
pm grant com.google.android.gms android.permission.ACCESS_FINE_LOCATION
pm grant com.google.android.gms android.permission.ACCESS_BACKGROUND_LOCATION
pm grant com.google.android.gms android.permission.WRITE_EXTERNAL_STORAGE
pm grant com.google.android.gms android.permission.READ_PHONE_STATE

echo "Setting microG app permissions [done]"
