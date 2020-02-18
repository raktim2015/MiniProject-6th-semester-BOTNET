@echo off
rem Generate temporary script to upload %1
echo open ftp://user1:node@%1 >> script.tmp
echo put "C:\Users\Public\Pictures\Sample Pictures\Desert.jpg" >> script.tmp
echo exit >> script.tmp
 
rem Execute script
"C:\Program Files\WinSCP\WinSCP.com" /ini=nul /script=script.tmp

rem Delete temporary script
del script.tmp