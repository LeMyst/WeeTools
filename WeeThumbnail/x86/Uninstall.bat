@echo off
if defined ProgramFiles(x86) (
	regsvr32 /u /s "%SystemRoot%\SysWOW64\WeeThumbnail.dll"
	del %SystemRoot%\SysWOW64\WeeThumbnail.dll
	@echo Tried to uninstall from: "%SystemRoot%\SysWOW64"
) else (
	regsvr32 /u /s "%SystemRoot%\system32\WeeThumbnail.dll"
	del %SystemRoot%\system32\WeeThumbnail.dll
	@echo Tried to uninstall from: "%SystemRoot%\system32"
)