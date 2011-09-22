@echo off
if defined PROCESSOR_ARCHITEW6432 (
	copy ".\x64\WeeThumbnail.dll" %SystemRoot%\system32
	regsvr32 /s "%SystemRoot%\system32\WeeThumbnail.dll"
	@echo Installed 64 bit version to: "%SystemRoot%\system32"
) else (
	copy ".\x86\WeeThumbnail.dll" %SystemRoot%\system32
	regsvr32 /s "%SystemRoot%\system32\WeeThumbnail.dll"
	@echo Installed 32 bit version to: "%SystemRoot%\system32"
)