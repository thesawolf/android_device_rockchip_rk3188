#!/bin/bash

cd $OUT
rm boot.img
#rm recovery.img
pushd root/
chmod g-w -R *
find . | cpio -o -H newc | gzip -n > ../boot.gz
popd

#pushd recovery/root/
#chmod g-w -R *
#find . | cpio -o -H newc | gzip -n > ../../recovery.gz
#popd
cd $OUT/rktools
#./rkcrc -k ../recovery.gz ../recovery.img
./rkcrc -k ../boot.gz ../boot.img

rm ../boot.gz
#rm ../recovery.gz

exit 0
