rm /home/gustavo/zips/*.zip
/home/gustavo/kernel/usr/build_scripts/build_kernel.sh
find -name '*.ko' -exec cp -av {} /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/ \;
chmod 644 /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
/home/gustavo/toolchain/bin/arm-linux-androideabi-strip --strip-unneeded /home/gustavo/kernel/usr/galaxys2_initramfs_files/modules/*
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/cm_initramfs.list"
/home/gustavo/kernel/usr/build_scripts/makezip.sh
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/cm_initramfs.twrp.list"
/home/gustavo/kernel/usr/build_scripts/makezip.twrp.sh
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/omni_initramfs.list"
/home/gustavo/kernel/usr/build_scripts/makezip_omni.sh
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/omni_initramfs.twrp.list"
/home/gustavo/kernel/usr/build_scripts/makezip_omni.twrp.sh
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/slimkat_initramfs.list"
/home/gustavo/kernel/usr/build_scripts/makezip_slimkat.sh
make -j3 zImage CONFIG_INITRAMFS_SOURCE="/home/gustavo/kernel/usr/initramfs/slimkat_initramfs.twrp.list"
/home/gustavo/kernel/usr/build_scripts/makezip_slimkat.twrp.sh
