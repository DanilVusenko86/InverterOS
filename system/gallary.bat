@echo off


set gallery_path="Photo\"


set files=


for /r %gallery_path% %%f in (*.jpg) do (


    set files=!files! %%f

)


echo.
echo Photo:
echo.
echo %files%
echo.


pause


:loop


set choice=
set /p choice="Select Photo (1-%files%): "

if "%choice%" neq "" (


    set image_path=%gallery_path%\%files:~0,%choice%-1


    img %image_path%

)

goto :loop