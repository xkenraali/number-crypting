color 06
mkdir saved1234
:start
@echo off
cls
echo       --------------------------------------
echo       -                                    -
echo       -           ENCRYPTER                -
echo       -                                    -
echo       --------------------------------------
set /p en=SELECT OPTION c = crypter q = quit  d = decrypt (c,q,d)
if /i %en% ==c goto en1
if /i %en% ==q exit
if /i %en% ==d goto dec


:dec
cls
if exist cl (goto decrypt) else goto notto
:decrypt
cls
set /p pass=ENTER DECRYPTION KEY:
if /i %pass% ==3547 goto ok


:wrong
cls
echo WRONG DECRYPTION KEY!!!!
timeout /t 3 >nul
exit

:ok
cd cl
start saved1234
exit


:en1
cls
echo   --------------------
echo   -     CRYPTER      -
echo   --------------------
echo only works for text files!!
set /p enter=ENTER FILENAME:
if exist %enter%. (goto crypting) else goto notfound

:crypting
cls
echo SAVING CURRENT FILE
if exist saved1234. (echo SAVING FILE FOUNDED) else goto saveprob
move %enter% saved1234
cls
echo STARTING CRYPTING!!
timeout /t 2 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >> %enter%
cls
echo encrypted!
timeout /t 2 >nul
mkdir cl
move saved1234 cl
cls
echo decryption key is: 3547
timeout /t 6 >nul
exit

:notfound
cls
echo FILE NOT FOUND make sure that this program and the file are in same directory!
pause
goto start

:saveprob
cls
echo RECOVERY FILE NAMED (SAVED1234) NOT FOUND  "RE INSTALLING RECOVERY"
timeout /t 2 >nul
mkdir saved1234
if exist saved1234. (goto again) else goto wtf

:again
cls
echo FILE INSTALLED RESTARTING FILE SAVING
timeout /t 3 >nul
goto :crypting
:wtf
echo RECOVERY FILE CANT BE DOWLOADED MAKE SURE THAT YOUR COMPUTER SUPPORT (mkdir) COMMAND
timeout /t 5 >nul
exit
