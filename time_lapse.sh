#!/bin/bash

PROJECT_DIR=/var/www/image/day/back_garden
DAY=thurs
SEQ_DIR=$PROJECT_DIR/seq_$DAY
MOVIE_DIR=$PROJECT_DIR/mov_$DAY

# create time-lapse video
echo 'creating time-lapse video in ' $MOVIE_DIR
cd $SEQ_DIR
avconv -y -r 10 -i pic%4d.jpg -vcodec libx264 -q:v 31 -vf scale=iw/4:ih/4 $MOVIE_DIR/time-lapse.mp4

