# This script is included in squisher
# It is the final build step (after OTA package)

# prebuilt boot, devtree, logo & updater-script
rm -f $REPACK/ota/boot.img
cp -f $DEVICE_TOP/releasetools/updater-script $REPACK/ota/META-INF/com/google/android/updater-script

