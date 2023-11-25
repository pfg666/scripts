@echo off

IF "%4"=="" goto usage

call ffmpeg -i %1 -ss %2 -to %3 -c:v libx264 -c:a libmp3lame %4
goto :eof

:usage
@echo Extracts from an audio file a slice specified by a start time and end time.
echo:
@echo Usage: %0 input start_time end_time output
echo:
@echo start_time and end_time are given in the format hh:mm:ss (e.g., 01:10:34)