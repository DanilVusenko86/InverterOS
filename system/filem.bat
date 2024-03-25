@Echo off

:menu

cls

type theme\filem.txt

dir 

echo.

set /p input= FILEMANAGER:

rem =======================

cd %input%

goto menu