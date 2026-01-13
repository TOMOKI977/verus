# Verus

Verus es un MVP **mobile-first** construido con **Flutter** y **Serverpod**, orientado al sector financiero en Bolivia.  
El proyecto busca ofrecer una arquitectura mantenible, con soporte para versiones legacy y un onboarding unificado para futuros desarrolladores.

---

## 🚀 Características principales
- **Mobile-first**: Aplicación Flutter con soporte multiplataforma (Android, iOS, Web, Desktop).
- **Backend en Serverpod**: API escalable en Dart con PostgreSQL.
- **Cliente Dart**: Conexión directa entre frontend y backend.
- **Gestión de versiones con FVM**: Evita conflictos entre proyectos Flutter/Dart.
- **Onboarding reproducible**: Scripts y documentación para nuevos integrantes del equipo.

---

## 📂 Estructura del proyecto
- `verus_server/` → Backend con Serverpod.
- `verus_client/` → Cliente Dart para consumir el backend.
- `verus_flutter/` → Aplicación Flutter conectada al backend.

---

## 🛠️ Instalación y configuración

### Prerrequisitos
- [Flutter](https://flutter.dev) (gestionado con [FVM](https://fvm.app))
- [Dart](https://dart.dev)
- [Serverpod](https://serverpod.dev)
- [Docker](https://www.docker.com/) (para PostgreSQL)

### Pasos
```bash
# Clonar el repositorio
git clone https://github.com/TOMOKI977/verus.git
cd verus

# Configurar FVM en cada subproyecto
cd verus_flutter && fvm use stable --force
cd ../verus_client && fvm use stable --force
cd ../verus_server && fvm use stable --force

# Instalar dependencias
fvm flutter pub get
fvm dart pub get

# Levantar base de datos
cd verus_server
docker compose up -d

# Aplicar migraciones y correr servidor
fvm dart run bin/main.dart --apply-migrations
fvm dart run bin/main.dart

# Correr la app Flutter
cd ../verus_flutter
fvm flutter run
