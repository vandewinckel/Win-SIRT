@echo off
cls
echo Retrieving Process Information
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
rem PROCESSES
wmic process list brief /format:htable

rem STARTUP
wmic startup list brief /format:htable
	
rem SERVICES
wmic service list brief /format:htable
) > ServiceReport.html