#!/bin/bash

sudo modprobe v4l2loopback exclusive_caps=1 max_buffers=2 && \
gphoto2 --capture-movie --stdout | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0 
