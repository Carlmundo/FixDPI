@echo off
echo Adding "Fix DPI" context menu...
reg add "HKCU\Software\Classes\exefile\shell\SetHighDPIAware" /ve /d "Fix DPI" /f
reg add "HKCU\Software\Classes\exefile\shell\SetHighDPIAware" /v "Icon" /d "%SystemRoot%\System32\imageres.dll,-27" /f
reg add "HKCU\Software\Classes\exefile\shell\SetHighDPIAware\command" /ve /d ^
"cmd /c reg add \"HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers\" /v \"%%1\" /t REG_SZ /d \"~ HIGHDPIAWARE\" /f" /f
pause