rm -rf build/ramdisk/sbin/dm_verity_signature_checker build/ramdisk/sbin/dm_verity_tz_cmd build/ramdisk/sbin/knox_changer

cp -R build/ramdiskmod/* build/ramdisk/

sed -i '/enforcing/d' build/ramdisk/default.prop

sed -i '/secure/d' build/ramdisk/default.prop

sed -i '/debuggable/d' build/ramdisk/default.prop

cat build/propmod >> build/ramdisk/default.prop

