@Echo Off

cls 

type theme\oobe\oobe.txt

set /p oobe= SETUP:

if %oobe%==n goto user


:user

cls 

type theme\user.txt

set /p user= USERNAME:

echo %user% > username.txt

goto exitt


:exitt

cls

type theme\oobe\exit.txt

set /p oobe= SETUP:

if %oobe%==n (

echo 1 > oobe.txt

exit
)
