@echo off
chcp 65001 > nul
echo ====================================
echo    SERVIDOR MU ONLINE - OpenMU
echo ====================================
echo.
echo 1. Iniciar Servidor
echo 2. Detener Servidor
echo 3. Reiniciar Servidor
echo 4. Ver Estado
echo 5. Ver Logs
echo 6. Abrir Admin Panel
echo 7. Salir
echo.
set /p opcion="Selecciona una opción: "

if "%opcion%"=="1" goto iniciar
if "%opcion%"=="2" goto detener
if "%opcion%"=="3" goto reiniciar
if "%opcion%"=="4" goto estado
if "%opcion%"=="5" goto logs
if "%opcion%"=="6" goto admin
if "%opcion%"=="7" goto salir

:iniciar
echo.
echo Iniciando servidor...
cd OpenMU\deploy\all-in-one
docker compose up -d
echo.
echo Servidor iniciado correctamente!
pause
goto menu

:detener
echo.
echo Deteniendo servidor...
cd OpenMU\deploy\all-in-one
docker compose down
echo.
echo Servidor detenido.
pause
goto menu

:reiniciar
echo.
echo Reiniciando servidor...
cd OpenMU\deploy\all-in-one
docker compose restart
echo.
echo Servidor reiniciado.
pause
goto menu

:estado
echo.
echo Estado de los contenedores:
docker ps
echo.
pause
goto menu

:logs
echo.
echo Mostrando logs (Ctrl+C para salir):
docker logs openmu-startup -f
goto menu

:admin
echo.
echo Abriendo Admin Panel en el navegador...
start http://localhost
pause
goto menu

:salir
exit

:menu
cls
goto start
