@echo off
title DEPLOY LOCAL - PORFOLIO
echo ===============================================
echo      DESPLIEGUE LOCAL DE PORTFOLIO
echo ===============================================
echo.

REM --- Configuración de rutas ---
set SOURCE="C:\Users\nexus\OneDrive\Documentos\ProyectosWeb\acruzca.github.io"
set TARGET="C:\xampp\htdocs\portfolio"
set XAMPP="C:\xampp"
set URL=https://localhost/portfolio

REM --- Limpiar carpeta destino ---
echo Eliminando contenido anterior de:
echo %TARGET%
rd /s /q %TARGET%
mkdir %TARGET%
echo Carpeta limpia creada.
echo.

REM --- Copiar archivos del proyecto ---
echo Copiando archivos desde:
echo %SOURCE%
echo hacia:
echo %TARGET%
xcopy %SOURCE% %TARGET% /E /H /C /I /Y >nul
echo Archivos copiados correctamente.
echo.

REM --- Abrir Firefox con la URL del proyecto ---
echo Abriendo el navegador Firefox...
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" %URL%
echo.

echo Despliegue completado con exito.
echo Tu proyecto portfolio personal esta disponible en:
echo %URL%
echo.
pause