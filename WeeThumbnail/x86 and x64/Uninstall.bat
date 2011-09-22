@echo off
regsvr32 /u /s "%SystemRoot%\system32\WeeThumbnail.dll"
del %SystemRoot%\system32\WeeThumbnail.dll
@echo Tried to uninstall from: "%SystemRoot%\system32"
