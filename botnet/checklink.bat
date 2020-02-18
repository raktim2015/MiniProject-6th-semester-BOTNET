@setlocal enableextensions enabledelayedexpansion
@echo off
set ipaddr=%1
:loop
set state=down

for /f "tokens=5,6,7" %%a in ('ping -n 1 !ipaddr!') do (
    if "x%%b"=="xunreachable." goto :endloop
    if "x%%a"=="xReceived" if "x%%c"=="x1,"  set state=up
)
:endloop
if !state!==up (
	echo up
	call "C:\Users\user1\desktop\ftp.bat"  %ipaddr%

) else (echo down)
ping -n 6 127.0.0.1 >nul: 2>nul:
endlocal