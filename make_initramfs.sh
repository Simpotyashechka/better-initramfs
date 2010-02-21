#!/bin/sh
cd initramfs_root && \
find . | cpio -H newc -o |  gzip -9 > ../initramfs.cpio.gz

if [[ $? == 0 ]] ; then
    echo "Done, copy initramfs.cpio.gz to /boot"
else
    echo "Buu. :("
fi

cd ..
