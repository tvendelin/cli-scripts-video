#!/bin/bash

ffmpeg -video_size 1920x1200 -framerate 30 -f x11grab -i :0.0 "$1"
