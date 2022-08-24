goto :menu

:ifs
if "%numero%" == "--version" (goto :opcao1)
if "%numero%" == "--help" (goto :opcao2)
if "%numero%" == "data" (goto :opcao3)

:menu
set /p numero=Digite um comando: 
goto :ifs

:opcao1
cls
echo Versao 0.01.
goto :menu
pause

:opcao2
cls
echo Os comandos disponiveis sao --version, --help, data.
goto :menu
pause

:opcao3
cls
set data=%date:~6,4%-%date:~3,2%-%date:~0,2%
set hora=%time:~0,2%:%time:~3,2%
echo Data atual: %data%
echo Hora Atual: %hora%
goto :menu
pause
