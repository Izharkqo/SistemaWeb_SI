@echo off
echo ========================================
echo   CONFIGURACION SISTEMA MAKRO - LOGIN
echo ========================================
echo.

echo [1/6] Instalando dependencias de Composer...
composer install
if %errorlevel% neq 0 (
    echo Error: Fallo al instalar dependencias de Composer
    pause
    exit /b 1
)

echo.
echo [2/6] Generando clave de aplicacion...
php artisan key:generate
if %errorlevel% neq 0 (
    echo Error: Fallo al generar clave de aplicacion
    pause
    exit /b 1
)

echo.
echo [3/6] Ejecutando migraciones...
php artisan migrate
if %errorlevel% neq 0 (
    echo Error: Fallo al ejecutar migraciones
    echo Asegurate de que MySQL este ejecutandose y la base de datos 'db_makro' exista
    pause
    exit /b 1
)

echo.
echo [4/6] Creando usuario de prueba...
php artisan db:seed
if %errorlevel% neq 0 (
    echo Error: Fallo al crear usuario de prueba
    pause
    exit /b 1
)

echo.
echo [5/6] Instalando dependencias de NPM...
npm install
if %errorlevel% neq 0 (
    echo Error: Fallo al instalar dependencias de NPM
    pause
    exit /b 1
)

echo.
echo [6/6] Compilando assets...
npm run build
if %errorlevel% neq 0 (
    echo Error: Fallo al compilar assets
    pause
    exit /b 1
)

echo.
echo ========================================
echo   CONFIGURACION COMPLETADA CON EXITO
echo ========================================
echo.
echo Credenciales de acceso:
echo Email: admin@makro.com
echo Password: admin123
echo Operador: juan.operador@makro.com (operador123)
echo Solo Lectura: ana.consulta@makro.com (consulta123)
echo Supervisor 2: carlos.supervisor@makro.com (supervisor123)
echo.
echo Para iniciar el servidor ejecuta:
echo php artisan serve
echo.
pause