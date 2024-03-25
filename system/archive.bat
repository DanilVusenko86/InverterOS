@Echo off

cls

type theme\archive\main.txt

set /p input= Archive:

if %input%==1 goto extract
if %input%==2 goto menu
if %input%==3 exit


:extract

cls

type theme\archive\extract.txt

set /p pathtofile= PathToFile:

set /p pathtofolder= PathToFolder:

"lib\WinRAR\Rar.exe" x %pathtofile% %pathtofolder%


:menu

cls

type theme\archive\bar.txt

type theme\archive\interface.txt

set /p input= ARCHIVE:

if %input%==m goto bar1


:bar1

cls

type theme\archive\bar1.txt

set /p input= ARCHIVE:

if %input%==1 goto extract
if %input%==2 goto compress
if %input%==3 exit

:compress

cls

type theme\archive\bar.txt

type theme\archive\interface.txt

set /p pathtofile= PathToFolder-FileName:

set /p pathtofolder= PathToFolderToCompressed:


"lib\WinRAR\Rar.exe" a -ag %pathtofile% %pathtofolder%

goto menu





