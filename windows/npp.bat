Setlocal EnableDelayedExpansion

SET /A ARGS_COUNT=0 
SET SCRIPT_ARGS=
FOR %%A in (%*) DO (
  SET SCRIPT_ARGS=!SCRIPT_ARGS! %%A
  SET /A ARGS_COUNT+=1)
IF NOT DEFINED NPP_HOME (
  SET NPP_HOME="C:\Program Files (x86)\Notepad++"
  ECHO "NPP_HOME is not set. Setting it to %NPP_HOME%"
)
IF %ARGS_COUNT% EQU 0 (
  start "" "%NPP_HOME%\notepad++"
) ELSE (
  start "" "%NPP_HOME%\notepad++" !SCRIPT_ARGS!
)