@echo off

:open

cls 

type theme\openapps.txt

set /p opener= Options:

if %opener%==1 goto executive
if %opener%==2 goto batchapp
if %opener%==3 goto py
if %opener%==4 exit

rem =======================================

:executive

cls 

type theme\openappsdia.txt

set /p opener= path:

start %opener%

rem =======================================

:batchapp

cls 

type theme\openappsdia.txt

set /p opener= path:

call %opener%


:py 

cls

type theme\openappsdia.txt

set /p opener= path:

python %opener%

goto open

