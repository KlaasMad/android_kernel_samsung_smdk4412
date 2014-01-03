cp /home/gustavo/kernel/arch/arm/boot/zImage /home/gustavo/zip_tmp/

CURRENTDATE=$(date +"%d-%m")
cd /home/gustavo/zip_tmp
rm *.zip
zip -r slimkat-kernel-$CURRENTDATE-TWRP.zip ./
cp ./*.zip /home/gustavo/zips/slimkat-kernel-$CURRENTDATE-TWRP.zip
