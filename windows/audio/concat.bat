@echo off

IF "%3"=="" goto usage

call ffmpeg -i %1 -i %2 -filter_complex "[0:a][1:a]concat=n=2:v=0:a=1" %3

goto :eof

:usage
@echo Concatenates two audio files.
echo:
@echo Usage: %0 audio_file1 audio_file2 output