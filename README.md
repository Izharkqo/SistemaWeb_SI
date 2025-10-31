# Sistema Web Makro

Sistema de gestión web desarrollado en Laravel 12 con PHP 8.2, que incluye un sistema de autenticación completo y dashboard administrativo.

## 🚀 Características

- ✅ Sistema de login seguro
- ✅ Dashboard administrativo responsive
- ✅ Interfaz moderna con Bootstrap 5
- ✅ Validación de formularios
- ✅ Middleware de protección de rutas
- ✅ Conexión a base de datos MySQL
- ✅ Usuario de prueba pre-configurado

## 📋 Requisitos

- PHP 8.2 o superior
- Composer
- Node.js y NPM
- MySQL
- Servidor web (Apache/Nginx) o usar `php artisan serve`

## ⚙️ Configuración de Base de Datos

El sistema está configurado para conectarse a:
- **Host:** 127.0.0.1
- **Puerto:** 3306
- **Base de datos:** db_makro
- **Usuario:** root
- **Contraseña:** Pala12nada34

Asegúrate de crear la base de datos antes de ejecutar las migraciones:
```sql
CREATE DATABASE db_makro;
```

## 🛠️ Instalación Rápida

### Opción 1: Script Automático (Windows)
```bash
setup.bat
```

### Opción 2: Instalación Manual
```bash
# 1. Instalar dependencias
composer install
npm install

# 2. Generar clave de aplicación
php artisan key:generate

# 3. Ejecutar migraciones
php artisan migrate

# 4. Crear usuario de prueba
php artisan db:seed

# 5. Compilar assets
npm run build

# 6. Iniciar servidor
php artisan serve
```

## 🔐 Credenciales de Acceso

- **Email:** admin@makro.com
- **Contraseña:** admin123

## 📱 Rutas Disponibles

- `/` - Página principal (redirige según autenticación)
- `/login` - Formulario de inicio de sesión
- `/dashboard` - Panel administrativo (requiere autenticación)
- `/logout` - Cerrar sesión (POST)

## 🎨 Capturas de Pantalla

### Página de Login
- Diseño moderno y responsive
- Validación de formularios en tiempo real
- Opción "Recordarme"
- Mensajes de error personalizados

### Dashboard
- Estadísticas en tiempo real
- Acciones rápidas
- Navegación intuitiva
- Información del usuario logueado

## 🔧 Tecnologías Utilizadas

- **Backend:** Laravel 12, PHP 8.2
- **Frontend:** Bootstrap 5, Font Awesome
- **Base de datos:** MySQL
- **Autenticación:** Laravel Auth
- **Compilación:** Vite

## 📝 Estructura del Proyecto

```
sistemaweb_makro/
├── app/Http/Controllers/
│   ├── AuthController.php      # Controlador de autenticación
│   └── DashboardController.php # Controlador del dashboard
├── resources/views/
│   ├── layouts/app.blade.php   # Layout principal
│   ├── auth/login.blade.php    # Vista de login
│   └── dashboard.blade.php     # Vista del dashboard
├── database/seeders/
│   └── UserSeeder.php          # Seeder para usuario de prueba
└── routes/web.php              # Rutas de la aplicación
```

## 🚀 Próximas Funcionalidades

- Gestión de productos
- Sistema de ventas
- Reportes y estadísticas
- Gestión de inventario
- Módulo de clientes

## 📞 Soporte

Para soporte técnico o consultas sobre el sistema, contacta al desarrollador.

---

**Desarrollado con ❤️ usando Laravel**
