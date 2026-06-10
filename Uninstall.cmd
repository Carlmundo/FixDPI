@echo off
echo Removing "Fix DPI" context menu...
reg delete "HKCU\Software\Classes\exefile\shell\SetHighDPIAware" /f
pause