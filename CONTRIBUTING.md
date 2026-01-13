# Verus - Guía de Contribución y Onboarding

Este documento explica cómo levantar el proyecto Verus desde cero, qué comandos ejecutar, qué resultados esperar y algunas notas importantes para el flujo de desarrollo.

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

---

### 1. Clonar el repositorio
```bash
git clone https://github.com/TOMOKI977/verus.git
cd verus
```
### 2. Configurar FVM en cada subproyecto
```bash
cd verus_flutter && fvm use stable --force
cd ../verus_client && fvm use stable --force
cd ../verus_server && fvm use stable --force
```
### 3. Instalar dependencias
```bash
fvm flutter pub get
fvm dart pub get
```
### 4. Levantar base de datos
```bash
cd verus_server
docker compose up -d
```
### 5. Aplicar migraciones y correr servidor
```bash
fvm dart run bin/main.dart --apply-migrations
fvm dart run bin/main.dart
```
#### Salida esperada:
```bash
SERVERPOD initialized
Applied database migration: <timestamp>
WebServer INFO: Webserver listening on http://localhost:8082
```
#### Además, verás logs de endpoints de prueba como:
```bash
METHOD greeting.hello user=null, queries=0, duration=22µs
```
### 6. Correr la app Flutter
```bash
cd ../verus_flutter
fvm flutter run -d web-server
```
#### Salida esperada:
```bash
lib\main.dart is being served at http://localhost:<port>
The web-server device requires the Dart Debug Chrome extension...
```
## Notas importantes:
* El servidor web se levanta en un puerto aleatorio (http://localhost:59731 por ejemplo).
* Para debugging, Flutter solo soporta Chrome y Edge (ambos basados en Chromium).
* Si quieres probar en Firefox o forks (ej. Zen), abre manualmente la URL en ese navegador.
⚠️ No tendrás soporte de debugging, solo ejecución.

## 🔑 Comandos útiles durante desarrollo
* `r` → Hot reload 🔥
* `R` → Hot restart
* `q` → Terminar ejecución
* `d` → Detach (deja la app corriendo pero cierra la sesión actual)

## ✅ Checklist de verificación
* - [ ] El servidor corre en `http://localhost:8082` y responde al endpoint greeting.hello.
* - [ ] La app Flutter se levanta en `http://localhost:<port>` y muestra la pantalla inicial.
* - [ ] Los logs del servidor muestran llamadas desde la app.
