@ECHO OFF
set rand=1
set domain=google.com
set ip=74.125.200.138
TITLE C:\Windows\system32\ping.exe
ECHO.
ECHO Pinging %domain% [%ip%] with 32 bytes of data:
:x
set /a minval=1321
set /a maxval=3513
set /a pingNumber=%RANDOM% * (%maxval% - %minval% + 1) / 32768 + %minval%
if %rand% LEQ 5 (
	ECHO Reply from %ip%: bytes=32 time=%pingNumber%ms TTL=58
) else (
	ECHO Request timed out.
)
SET /A rand=%RANDOM%%%10+1
TIMEOUT 2 >nul
goto x