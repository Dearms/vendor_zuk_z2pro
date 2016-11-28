#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 43610112 99a2d3f2e7ea1471e968d72e9dd098bc4f161c34 40628224 26122fed5d8100ebc6092d6723cc4061aeb4107c
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:43610112:99a2d3f2e7ea1471e968d72e9dd098bc4f161c34; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:40628224:26122fed5d8100ebc6092d6723cc4061aeb4107c EMMC:/dev/block/bootdevice/by-name/recovery 99a2d3f2e7ea1471e968d72e9dd098bc4f161c34 43610112 26122fed5d8100ebc6092d6723cc4061aeb4107c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
