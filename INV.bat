@Echo off


set start=

cls 

chdir system\

type theme\progressbar\load.txt


timeout  /t 0,5
cls 

type theme\progressbar\load1.txt


timeout /t 0,5

cls 

type theme\progressbar\load3.txt


timeout /t 0,5

cls 

type theme\progressbar\load4.txt


timeout /t 0,5

cls 

type theme\progressbar\load5.txt


timeout /t 0,5

cls 

type theme\progressbar\load6.txt


timeout /t 0,5

cls 

type theme\progressbar\load7.txt


timeout /t 0,5

cls 

type theme\progressbar\load8.txt


timeout /t 0,5

cls 

type theme\progressbar\load9.txt


timeout /t 0,5

cls 

type theme\progressbar\load10.txt


timeout /t 0,5

cls 

type theme\progressbar\load11.txt


timeout /t 0,5

cls 

type theme\progressbar\load12.txt


timeout /t 0,5

cls 

type theme\progressbar\load13.txt


timeout /t 0,5

cls 

type theme\progressbar\load14.txt


timeout /t 0,5

cls 

type theme\progressbar\load15.txt


timeout /t 0,5

cls 

type theme\progressbar\load16.txt


timeout /t 0,5

cls 

type theme\progressbar\load17.txt


timeout /t 0,5

cls 

type theme\progressbar\load18.txt


timeout /t 0,5

cls 

type theme\progressbar\load19.txt


timeout /t 0,5

cls 

type theme\progressbar\load20.txt


timeout /t 0,5

cls 

type theme\progressbar\load21.txt


timeout /t 0,5

cls 

type theme\progressbar\load22.txt


timeout /t 1

cls 

type theme\progressbar\inverter.txt

timeout /t 2

rem ======================oobe====

set /p oobe=< oobe.txt

if %oobe%==0 call oobe.bat
if %oobe%==1 goto menu

rem ==============================

rem Config ==========================

set system= system/
set bar= system/bar.txt
set ver= system/ver.txt
set consol= system/terminal.txt
set autoexec= system/autoexec.bat
set autostart=
set su= 0
set usr= system/users/user.txt


rem =================================


:menu

cls

type theme\bar.txt
type theme\ver.txt

set /p command= INVETEROS:

rem =======================================

if %command%==m goto menu1 
if %command%==n goto new 
if %command%==p goto power 
if %command%==h goto help 
if %command%==s goto settings 

rem =======================================

:menu1

cls 

type theme\bard1.txt

set /p command= INVETEROS:

rem =======================================

if %command%==1 call apps.bat
if %command%==2 call filem.bat
if %command%==3 call player.bat
if %command%==4 call terminal.bat
if %command%==5 call archive.bat


rem =======================================

rem ==================================================================

:new

cls

type theme\bard2.txt

set /p command= INVETEROS:

rem =======================================

if %command%==1 goto create
if %command%==2 goto createf
if %command%==3 call filem.bat

rem =======================================

:create

cls 

type theme\create.txt

set /p creater= CREATE:

rem =======================================

if %creater%==2 goto menu
if %creater%==1 goto createfile

rem =======================================

:createfile


cls 

type theme\createdia.txt

set /p creater= CREATE:

rem =======================================

copy formats/document.txt Documents/

if %creater%==1 goto menu



:createf

cls 

type theme\createf.txt

set /p createfold= CREATE:

rem ================================

if %createfold%==1 goto createfold
if %createfold%==2 goto menu

rem ================================


:createfold

set /p name= Set Folder Name:

cls 

type theme\createdia.txt

set /p createfold= CREATE:


mkdir %name%


rem ================================

if %createfold%==1 goto menu

rem ================================




:power

cls 

type theme\bard3.txt

set /p command= INVETEROS:


rem ================================

if %command%==1 (

cls 

type theme\poweroff.txt

set /p command= INVETEROS:

if %command%==1 exit
if %command%==2 goto menu)

if %command%==2 shutdown /s /f

if %command%==3 (

cls 

type theme\terminal.txt

exit 0)



:help

cls 

type theme\bard4.txt

set /p command= INVETEROS:

rem ===========================

if %command%==1 (

cls 

type theme\errordia.txt

echo                     this option not found
echo. 
echo                     [1.EXIT]

set /p command= INVETEROS:


if %command%==1 goto menu
)

:settings

cls 

type theme\bard5.txt

set /p command= INVETEROS:

if %command%==1 goto color
if %command%==2 goto user

:color 

cls 

type theme\color.txt

set /p command= INVETEROS:

if %command%==1 color 7
if %command%==2 color 2
if %command%==3 color 4
if %command%==4 color 6
if %command%==5 color 8
if %command%==6 color 3
if %command%==7 (

cls 

type theme\color.txt

set /p color= COLOR:

color %color%
)

goto menu


:user

cls 

type theme\user.txt

set /p user= USERNAME:

echo %user% > username.txt

goto menu




