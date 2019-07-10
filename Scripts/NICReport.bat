@echo off
cls
echo Retrieving NIC Information
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
wmic nic get name, macaddress, manufacturer, deviceid, physicaladapter /format:htable
) > NICReport.html