@echo off
title Welcome!
:menu
cls
echo Welcome in hcjtemplate - By Nimplex (C)
set /p directory="Adress to folder > "
cd %directory%
echo Empty file > index.html
mkdir js
cd js
echo Empty file > script.js
cd ..
mkdir css
cd css
echo Empty file > style.js
echo Template created!
echo >nul
pause