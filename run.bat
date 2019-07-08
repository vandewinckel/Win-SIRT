@echo off
cls
cmd /C %cd%/Scripts/HardwareReport.bat
cmd /C %cd%/Scripts/Hotfix.bat
cmd /C %cd%/Scripts/ServiceReport.bat
cmd /C %cd%/Scripts/SoftwareReport.bat
