@echo off
if defined ProgramFiles(x86) (
	copy WeeThumbnail.dll %SystemRoot%\SysWOW64
	regsvr32 /s "%SystemRoot%\SysWOW64\WeeThumbnail.dll"
	@echo Installed to: "%SystemRoot%\SysWOW64"
) else (
	copy WeeThumbnail.dll %SystemRoot%\system32
	regsvr32 /s "%SystemRoot%\system32\WeeThumbnail.dll"
	@echo Installed to: "%SystemRoot%\system32"
)
