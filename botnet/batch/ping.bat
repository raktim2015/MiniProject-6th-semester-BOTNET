@ECHO OFF
@setlocal enableextensions enabledelayedexpansion

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i

set mytime=%time%
echo Initialization time is %mydate%:%mytime%>>log.txt
del C:\Users\user1\Desktop\batch\pingcmds.bat

set /a i=0
for /f "Delims=" %%a in (ip.txt) do (
	::set IP[!i!]=%%a
	echo cd C:\Users\user1\Desktop\ >> pingcmds.bat
	echo checklink %%a >> pingcmds.bat
	set /a i += 1
)

for /f "Delims=" %%a in (pingcmds.bat) do (
	echo Pinging %%a
	call %%a
)
pause