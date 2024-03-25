@echo off

:terminal

cls 

set user= username.txt

type theme\terminal.txt

type %user% 

set /p terminal="@INVETEROS:"

rem terminal commands ===============================================

if %terminal%==ver type theme\ver.txt

if %terminal%==ani22load call theme\progressbar\progrrsss.bat

if %terminal%==clock time /t

if %terminal%==exit goto menu

if %terminal%==help (

cls 

type theme\help.txt)

if %terminal%==pysetup start lib\py.exe

if %terminal%==filem call filem.bat

if %terminal%==inv call pakinv.bat

rem ==================================================================

type %user% 
set /p terminal= @INVETEROS:

goto terminal
