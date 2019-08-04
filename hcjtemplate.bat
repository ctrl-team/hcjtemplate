@echo off
title Welcome!
:menu
echo %cd% > cdData.txt
for /f "delims=" %%x in (cdData.txt) do set cdData=%%x
cls
call echocl.bat "Welcome in hcjtemplate" y E 0 

echo.
echo hcjtemplate - html css js site template
echo By Nimplex(C)
echo.
set /p directory="Adress to folder > "
echo.
echo Visual Studio Code shortcut? (Y/N)
echo.
choice /c yn > nul
if %errorlevel% == 1 goto withvsc
if %errorlevel% == 2 goto do
:do
cd %directory%
echo Empty file > index.html
mkdir js
cd js
echo Empty file > script.js
cd ..
mkdir css
cd css
echo Empty file > style.css
cd %cdData%
call echocl.bat "Template created!" y A 0 
echo.
pause
exit

:withvsc
cd %directory%
echo code . > "Start Visual Studio Code.bat"
goto do