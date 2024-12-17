An `ffmpeg`-based toolkit (bash scripts) for video recording

# Install

Clone or download, and put somewhere in your `$PATH`.

Call with `-h` option for usage information.

# Tools

## `camera.sh`

Connect a camera that `gphoto2` recognizes as your webcam. Requierments:
- `gphoto2`
- `v4l2loopback` kernel module
- `UDEV` rule for your camera

Tested on Sony RX100M7.

## `screencast`

Record a video of your screen, optionally with audio and without lagging. Requierments:

- `ffmpeg`

## `pause_ffmpeg`

Pause or resume running `ffmpeg` process. Useful with associated key binding.
