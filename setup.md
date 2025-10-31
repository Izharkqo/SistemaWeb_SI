# Configuración del Sistema de Login - Makro

## Pasos para configurar el sistema:

### 1. Instalar dependencias
```bash
composer install
npm install
```

### 2. Generar clave de aplicación
```bash
php artisan key:generate
```

### 3. Crear la base de datos
Asegúrate de que MySQL esté ejecutándose y crea la base de datos:
```sql
CREATE DATABASE db_makro;
```

### 4. Ejecutar migraciones
```bash
php artisan migrate
```

### 5. Ejecutar seeders (crear usuario de prueba)
```bash
php artisan db:seed
```

### 6. Compilar assets
```bash
npm run build
```

### 7. Iniciar el servidor
```bash
php artisan serve
```

## Credenciales de acceso:
- **Email:** admin@makro.com
- **Contraseña:** admin123

## Rutas disponibles:
- `/` - Página principal (redirige según autenticación)
- `/login` - Formulario de login
- `/dashboard` - Panel principal (requiere autenticación)
- `/logout` - Cerrar sesión (POST)

## Características implementadas:
- ✅ Sistema de autenticación completo
- ✅ Middleware de protección de rutas
- ✅ Interfaz responsive con Bootstrap 5
- ✅ Validación de formularios
- ✅ Mensajes de error personalizados
- ✅ Función "Recordarme"
- ✅ Dashboard con estadísticas básicas
- ✅ Usuario de prueba pre-configurado
- ✅ Conexión a MySQL configurada