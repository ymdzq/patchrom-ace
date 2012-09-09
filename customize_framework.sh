#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
ZIP_FILE=sensation_4.5.4.zip
 
if [ $2 = "out/framework" ];then
	echo "delete framework redundance files"
	rm -rf "out/framework/smali/com/android/internal/telephony"

	echo "make framework2.jar"
	mkdir -p "out/ZIP/system/framework"
	cp -r "framework2.jar.out" "out/framework2.jar.out" 
	mv "out/framework/smali/miui" "out/framework2.jar.out/smali"
	mkdir -p "out/framework2.jar.out/smali/android"
	mv "out/framework/smali/android/widget" "out/framework2.jar.out/smali/android"

	for file in `find "$1/smali/com/android/internal/telephony" -name "*.smali"`
	do
        	newfile=${file/$1/"out/framework2.jar.out"}
        	if [ ! -f "$newfile" ]
        	then
        	        mkdir -p `dirname $newfile`
        	        echo "add widget smali from miui: $file"
        	        cp $file $newfile
       		fi
	done
	$APKTOOL b  "out/framework2.jar.out" "out/framework2.jar"
	cp "out/framework2.jar" "out/ZIP/system/framework/framework2.jar"
	
elif [ $2 = "out/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.smali`
    do
        dstfile="$curdir/out/android.policy/$file"
        cat $file >> $dstfile
    done
    cd -
fi
