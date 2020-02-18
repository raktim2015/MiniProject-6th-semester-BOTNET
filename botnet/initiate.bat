@echo off
setlocal enableextensions

:loop
echo loop
set /a i=0
for /f %%G in ('dir /b /A-d C:\Users\user1\Desktop\ftp') do (
	set /a i=i+1
)
echo %i%
if %i%==1 (echo go) else (goto loop)
pause