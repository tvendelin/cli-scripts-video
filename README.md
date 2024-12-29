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

## `declap`

### Usage: 

```
./declap [-v camera recording (MP4)] [-a external audio (WAV)] [-o output (MP4)] [-t temp directory] [-q] [-h]
```

The script aims to produce a video replacing original (low quality) embedded audio
with an externally recorded audio track, synchronized.

Both audio streams should have a loud clap or similar synchronization point
at the beginning.

The external audio must already be trimmed to the mentioned clap.

### Options:

-v   Camera recording with audio in MP4 format (required).
-a   Externally supplied audio in WAV format (already trimmed to the clap, required).
-o   Final output as MP4, trimmed to the clap, with the original audio replaced with the external audio (required).
-t   Temporary directory for intermediate files (optional, defaults to /tmp/declaps/<original MP4 stem name>).
-q   Quiet mode. Suppresses progress messages.
-h   Display this help message.
