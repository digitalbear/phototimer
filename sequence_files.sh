#!/bin/bash

PROJECT_DIR=/var/www/image/day/back_garden
SOURCE_DIR=$PROJECT_DIR/2018/4/15
DAY=sun
TEMP_DIR=$PROJECT_DIR/temp_$DAY
SEQ_DIR=$PROJECT_DIR/seq_$DAY

# copy images from subdirectories into single directory
echo 'copying images to ' $TEMP_DIR
mkdir -p $TEMP_DIR
find $SOURCE_DIR -name \*.jpg -exec cp -p -t $TEMP_DIR {} +

# rename files with sequence number
echo 'copying images to ' $SEQ_DIR
mkdir -p $SEQ_DIR
cd $TEMP_DIR
i=0
for x in `ls -tr`
  do
  let i=i+1
  mv $x $SEQ_DIR/pic`printf %04d $i`.jpg
done

