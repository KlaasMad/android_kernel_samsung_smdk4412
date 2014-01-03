cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/

CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r omni-4.4-kernel-$CURRENTDATE-CWM.zip ./
cp ./*.zip /home/gustavo/zips/omni-4.4-kernel-$CURRENTDATE-CWM.zip
