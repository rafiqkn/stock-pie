#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55100716:9221c6bf864bd85fdf38277ea1dafc5a7f9e4da8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51045672:f1d694db7c60eae574b01bbe034ee337393b9757 EMMC:/dev/block/bootdevice/by-name/recovery 9221c6bf864bd85fdf38277ea1dafc5a7f9e4da8 55100716 f1d694db7c60eae574b01bbe034ee337393b9757:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
