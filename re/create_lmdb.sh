#!/usr/bin/env sh
MY=/home/magic/caffe/examples/re
echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/home/magic/caffe/data/re/ \
$MY/train.txt \
$MY/img_train_lmdb

echo "Create test lmdb.."

rm -rf $MY/img_test_lmdb

build/tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/home/magic/caffe/data/re/ \
$MY/test.txt \
$MY/img_test_lmdb

echo "All Done."

