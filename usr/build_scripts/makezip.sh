cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/

CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r cm-11-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/cm-11-kernel-$CURRENTDATE-CWM.zip
