#!/usr/bin/env sh
DATA=data/re
MY=examples/re
echo "Create train.txt..."
rm -rf $MY/train.txt
for i in 3 4 5 6 7
do 
    find $DATA/train -name "$i*.jpg" | cut -d '/' -f3-4 | sed "s/$/$i/" >> $MY/train.txt
done
echo "Create test.txt..."
rm -rf $MY/test.txt
for i in 3 4 5 6 7
do 
    find $DATA/test -name "$i*.jpg" | cut -d '/' -f 3-4 | sed "s/$/$i/g" >> $MY/test.txt
done
echo "All done!"
