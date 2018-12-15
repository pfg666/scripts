@ECHO OFF
IF [%1]==[] goto usage
runas /profile /user:administrator %1
:usage
@echo Usage: %0 single_word_command 