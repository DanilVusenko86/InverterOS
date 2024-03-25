@echo off
:menu
cls
type theme\music.txt

echo 1. Play music
echo 2. Choose music
echo 3. Quit

set /p choice=Type the number of your choice:

if '%choice%'=='1' goto play
if '%choice%'=='2' goto choose
if '%choice%'=='3' goto quit

echo "%choice%" is not valid, try again

goto menu


:play

cls

type theme\music.txt

echo Playing music...

REM Add your music file path here

start "" "MUSIC\8-bit-arcade-138828.mp3"

goto menu



:choose

cls

type theme\music.txt

echo Choose music...

REM Add your music file path here

set /p music=Type the name of your music file:

start "" "MUSIC\%music%.mp3"

goto menu

:quit
type theme\music.txt

echo Quitting...

exit