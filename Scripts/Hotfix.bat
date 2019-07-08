@echo off
cls
echo Retrieving Hotfix Information
IF NOT EXIST "%Computername%" mkdir %Computername%
cd %cd%/%Computername%/
(
REM HotfixID
wmic qfe get HotfixID, Description, InstalledOn /format:htable
REM Windows Version
wmic os get version /format:htable
) > HotfixID.html