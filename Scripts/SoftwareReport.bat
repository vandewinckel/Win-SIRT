@echo off
cls
echo Retrieving Installed Programs
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
REM Installed Programs
wmic product get name, version, vendor /format:htable
) > SoftwareReport.html