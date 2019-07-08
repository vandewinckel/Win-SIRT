@echo off
cls
echo Retrieving Process Information
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
wmic process get Caption, Processid /format:htable

rem STARTUP
wmic startup list brief /format:htable
) > ServiceReport.html