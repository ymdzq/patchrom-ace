#! /bin/bash
TOOL_DIR=$PORT_ROOT/tools
OTA_FROM_TARGET_FILES=$TOOL_DIR/releasetools/ota_from_target_files
TARGET_FILES_TEMPLATE_DIR=$TOOL_DIR/target_files_template
TMP_DIR=$PWD/out
TARGET_FILES_DIR=$TMP_DIR/target_files
RECOVERY_ETC_DIR=$TARGET_FILES_DIR/RECOVERY/RAMDISK/etc
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM
META_DIR=$TARGET_FILES_DIR/META
TARGET_FILES_ZIP=$TMP_DIR/target_files.zip
OUTPUT_OTA_PACKAGE=$PWD/stockrom.zip
OUTPUT_METADATA_DIR=$PWD/metadata

echo "Build apkcerts.txt"
adb pull /data/system/packages.xml $TARGET_FILES_DIR
python $TOOL_DIR/apkcerts.py $TARGET_FILES_DIR/packages.xml $META_DIR/apkcerts.txt
for file in `ls $SYSTEM_DIR/framework/*.apk`
do
    apk=`basename $file`
    echo "name=\"$apk\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> $META_DIR/apkcerts.txt
done
cat $META_DIR/apkcerts.txt | sort > $META_DIR/temp.txt
mv $META_DIR/temp.txt $META_DIR/apkcerts.txt
rm $TARGET_FILES_DIR/packages.xml

