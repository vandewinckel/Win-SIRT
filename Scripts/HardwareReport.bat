@echo off
cls
echo Retrieving Hardware Information
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
rem COMPUTER PRODUCT
wmic csproduct get IdentifyingNumber, Name, UUID, Vendor, Version /format:htable 

rem CPU TYPE
wmic cpu get name /format:htable

rem RAM INFO
wmic memorychip get BankLabel, DeviceLocator, Capacity, Tag /format:htable

rem GPU TYPE
wmic path win32_videocontroller get name /format:htable

rem NETWORK INFO
wmic nic get AdapterType, Name, Installed, MACAddress, PowerManagementSupported, Speed /format:htable

rem DISK INFO
wmic diskdrive get size, partitions, deviceID, description, model /format:htable
) > HardwareReport.html