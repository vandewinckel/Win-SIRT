@echo off
cls
color 0e
title Windows System Information Retrieval Tool
mode con:cols=81 lines=25
echo.
echo.    __      __  ______   __  __            ____    ______   ____    ______   
echo.   /\ \  __/\ \/\__  _\ /\ \/\ \          /\  _`\ /\__  _\ /\  _`\ /\__  _\  
echo.   \ \ \/\ \ \ \/_/\ \/ \ \ `\\ \         \ \,\L\_\/_/\ \/ \ \ \L\ \/_/\ \/  
echo.    \ \ \ \ \ \ \ \ \ \  \ \ , ` \  _______\/_\__ \  \ \ \  \ \ ,  /  \ \ \  
echo.     \ \ \_/ \_\ \ \_\ \__\ \ \`\ \/\______\ /\ \L\ \ \_\ \__\ \ \\ \  \ \ \ 
echo.      \ `\___x___/ /\_____\\ \_\ \_\/______/ \ `\____\/\_____\\ \_\ \_\ \ \_\
echo.       '\/__//__/  \/_____/ \/_/\/_/          \/_____/\/_____/ \/_/\/ /  \/_/
echo.
:menu
echo.              . . . . . . . . . . . . . . . . . . . . . . . . . . . .
echo.              .                                                     .
echo.              . Windows System Information Retrieval Tool - v0.1.2  .
echo.              .    Created by: Vandewinckel, 2019                   .
echo.              . . . . . . . . . . . . . . . . . . . . . . . . . . . .
echo.              .                                                     .
echo.              . 1 - Get Hardware                                    .
echo.              . 2 - Get Operating System Information                .
echo.              . 3 - Get Service Report                              .
echo.              . 4 - Get Installed Software                          .
echo.              . 5 - Get System Report                               .
echo.              .                                                     .
echo.              . . . . . . . . . . . . . . . . . . . . . . . . . . . .
echo.
set /p M= //WIN-SIRT//:
if %M%==1 GOTO Hardware
if %M%==2 GOTO OS
if %M%==3 GOTO Service
if %M%==4 GOTO Programs
if %M%==5 GOTO All
:Hardware
cmd /C %cd%/Scripts/HardwareReport.bat
GOTO EOF
:OS
cmd /C %cd%/Scripts/Hotfix.bat
GOTO EOF
:Service
cmd /C %cd%/Scripts/ServiceReport.bat
GOTO EOF
:Programs
cmd /C %cd%/Scripts/SoftwareReport.bat
GOTO EOF
:All
cmd /C %cd%/Scripts/HardwareReport.bat
cmd /C %cd%/Scripts/Hotfix.bat
cmd /C %cd%/Scripts/ServiceReport.bat
cmd /C %cd%/Scripts/SoftwareReport.bat
GOTO EOF
