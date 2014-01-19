#!/bin/bash
#
# -i filename (input)
#      input file name
# -t duration (output)
#      Stop writing the output after its duration reaches duration.
#      duration may be a number in seconds, or in "hh:mm:ss[.xxx]" form.
#  -to position (output)
#      Stop writing the output at position.  position may be a number in
#      seconds, or in "hh:mm:ss[.xxx]" form.
# -ss position (input/output)
#          When used as an input option (before "-i"), seeks in this input file
#          to position. When used as an output option (before an output
#          filename), decodes but discards input until the timestamps reach
#          position. This is slower, but more accurate.
# -an (output)
#          Disable audio recording.
# -vn (output)
#          Disable video recording.

ffmpeg -i file_in file_out
