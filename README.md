# Servidor MU Online - OpenMU

Servidor MU Online completo basado en [MUnique/OpenMU](https://github.com/MUnique/OpenMU), listo para usar con Docker.

---

## Requisitos del Sistema

### Software Necesario

| Software | Version | Enlace de Descarga |
|----------|---------|-------------------|
| **Docker Desktop** | Latest | https://www.docker.com/products/docker-desktop |
| **Git** | Latest | https://git-scm.com/downloads |
| **.NET Runtime 10** | 10.0+ | https://dotnet.microsoft.com/download/dotnet/10.0 |

### Requisitos de Hardware

- **OS:** Windows 10/11 (64-bit)
- **RAM:** 4GB minimo (8GB recomendado)
- **Disco:** 5GB espacio libre
- **CPU:** Procesador de 4 nucleos o superior

### Puertos Requeridos

Asegurate de que estos puertos esten libres:

| Puerto | Servicio |
|--------|----------|
| 80 | Admin Panel (Web) |
| 44405 | Connect Server (Cliente Season 6) |
| 44406 | Connect Server (Cliente Open Source) |
| 55901-55906 | Game Servers |
| 55980 | Chat Server |

---

## Instalacion Rapida

### Paso 1: Clonar el Repositorio

```powershell
git clone https://github.com/MUnique/OpenMU.git
```

O descargar directamente desde:
- https://github.com/MUnique/OpenMU/archive/refs/heads/master.zip

### Paso 2: Iniciar Docker Desktop

Asegurate de que Docker Desktop este ejecutandose. Si no esta instalado:

1. Descarga Docker Desktop: https://www.docker.com/products/docker-desktop
2. Instalalo y reinicia tu computadora
3. Abre Docker Desktop y espera a que este listo (icono verde en la barra de tareas)

### Paso 3: Iniciar el Servidor

Abre PowerShell y ejecuta:

```powershell
cd OpenMU\deploy\all-in-one
docker compose up -d --no-build
```

El servidor descargara las imagenes necesarias y se configurara automaticamente.

---

## Cliente de Juego

### Descargar Cliente Season 6 Episode 3

El cliente compatible con OpenMU es el **Season 6 Episode 3 (version 1.04d)**:

| Archivo | Enlace | Contrasena |
|---------|--------|------------|
| Cliente Completo | https://mega.nz/file/a0AS0J6B | `L6xziQ6NQIhTu_4iEScWbLi2jWZWzCiTJvoFz89KaHI` |
| main.exe Parcheado | https://mega.nz/file/L5oWQK5I | `wk9HMZvcwgLsLCnVkeJKIyynGgU8IciIWt9Tc_d7HSI` |
| ItemTooltip_eng.bmd | https://mega.nz/file/3lZzVaIT | `e7ZyHkiIJ3w6bBYnPG1ZNYYDx8BhvGtottVkitgY5Cw` |

### Cliente Launcher (Recomendado)

El launcher oficial de OpenMU configura automaticamente el cliente:

| Archivo | Enlace |
|---------|--------|
| MUnique.OpenMU.ClientLauncher v0.9.6 | https://github.com/MUnique/OpenMU/releases/download/v0.9.0/MUnique.OpenMU.ClientLauncher_0.9.6.zip |

---

## Configuracion del Cliente

### Paso 1: Descomprimir el Cliente

Descomprime el cliente en una carpeta, por ejemplo:
```
C:\MU\Client\
```

### Paso 2: Aplicar Parches (Opcional)

Reemplaza los archivos en la carpeta del cliente:
- `main.exe` → Usa la version parcheada
- `ItemTooltip_eng.bmd` → Usa la version parcheada

### Paso 3: Configurar el Launcher

1. Descomprime el Client Launcher en una carpeta
2. Abre `launcher.config` con un editor de texto
3. Configura la ruta del cliente:

```xml
<MainExePath>C:\MU\Client\main.exe</MainExePath>
```

4. Verifica las IPs de conexion (ya configuradas por defecto):

```xml
<ServerHostSettings>
  <Description>Connect Server (Season 6 Client)</Description>
  <Address>127.127.127.127</Address>
  <Port>44405</Port>
</ServerHostSettings>
```

**IMPORTANTE:** Usa `127.127.127.127` para jugar localmente. **NO uses `127.0.0.1`** ya que esta bloqueado por el cliente.

---

## Panel de Administracion

### Acceso al Panel

- **URL:** http://localhost
- **Usuario:** `admin`
- **Contrasena:** `openmu`

> **SEGURIDAD:** Cambia estas credenciales despues del primer acceso.

### Configuracion Importante: Resolve IP

Si tienes problemas de conexion (te desconectas al seleccionar servidor):

1. Abre el Admin Panel: http://localhost
2. Ve a **Configuration** → **System**
3. Busca **"Resolve IP"**
4. Cambia a **"Loopback"** o manualmente a **"127.127.127.127"**
5. Guarda los cambios

---

## Cuentas de Prueba

El servidor crea automaticamente cuentas de prueba:

| Usuario | Contrasena | Nivel | Descripcion |
|---------|------------|-------|-------------|
| test0 | test0 | 1 | Cuenta basica |
| test1 | test1 | 10 | Nivel 10 |
| test2 | test2 | 20 | Nivel 20 |
| test3 | test3 | 30 | Nivel 30 |
| test4 | test4 | 40 | Nivel 40 |
| test5 | test5 | 50 | Nivel 50 |
| test6 | test6 | 60 | Nivel 60 |
| test7 | test7 | 70 | Nivel 70 |
| test8 | test8 | 80 | Nivel 80 |
| test9 | test9 | 90 | Nivel 90 |
| test300 | test300 | 300 | Nivel alto |
| test400 | test400 | 400 | Master level |
| testgm | testgm | 400 | Game Master |
| testgm2 | testgm2 | 400 | GM (Summoner/Rage Fighter) |
| testunlock | testunlock | 1 | Clases desbloqueadas |
| quest1 | quest1 | 150 | Quest nivel 150 |
| quest2 | quest2 | 220 | Quest nivel 220 |
| quest3 | quest3 | 400 | Quest nivel 400 |
| ancient | ancient | 330 | Items ancient |
| socket | socket | 380 | Items socket |

---

## Comandos de Administracion

### Ver Estado de Contenedores

```powershell
docker ps
```

### Ver Logs del Servidor

```powershell
docker logs openmu-startup -f
```

### Detener el Servidor

```powershell
cd OpenMU\deploy\all-in-one
docker compose down
```

### Iniciar el Servidor

```powershell
cd OpenMU\deploy\all-in-one
docker compose up -d
```

### Reiniciar el Servidor

```powershell
cd OpenMU\deploy\all-in-one
docker compose restart
```

### Reiniciar Base de Datos (CUIDADO: Borra todos los datos)

```powershell
cd OpenMU\deploy\all-in-one
docker compose down
docker volume rm all-in-one_dbdata
docker compose up -d
```

---

## Configuracion para Jugar Online

### Abrir Puertos en el Router

Para que otros jugadores puedan conectarse:

| Puerto | Protocolo | Uso |
|--------|-----------|-----|
| 80 | TCP | Admin Panel |
| 44405 | TCP | Connect Server |
| 44406 | TCP | Connect Server Alt |
| 55901-55906 | TCP | Game Servers |
| 55980 | TCP | Chat Server |

### Cambiar IP Publica

1. Abre el Admin Panel
2. Ve a **Configuration** → **System**
3. Cambia **"Resolve IP"** a tu IP publica o hostname
4. Guarda los cambios

### Obtener tu IP Publica

```powershell
(Invoke-WebRequest -Uri "https://api.ipify.org" -UseBasicParsing).Content
```

---

## Solucion de Problemas

### "Me desconecto despues de seleccionar servidor"

**Solucion:**
- Abre el Admin Panel → Configuration → System
- Cambia "Resolve IP" a "Loopback" o tu IP correcta

### "Usuario o contrasena incorrectos"

**Solucion:**
- Usa las cuentas de prueba: `test1` / `test1`
- Verifica que el servidor este corriendo: `docker ps`

### "No aparecen servidores en la lista"

**Solucion:**
1. Verifica que Docker este ejecutandose
2. Ejecuta: `docker compose restart`
3. Espera 30 segundos y vuelve a abrir el cliente

### "Error de conexion al servidor"

**Solucion:**
1. Verifica los puertos: `netstat -an | findstr "44405"`
2. Asegurate de usar IP `127.127.127.127` (no `127.0.0.1`)
3. Revisa los logs: `docker logs openmu-startup`

### "Docker no puede conectar al daemon"

**Solucion:**
1. Abre Docker Desktop
2. Espera a que el icono este verde
3. Reinicia Docker Desktop si es necesario

### "Error de base de datos"

**Solucion:**
```powershell
cd OpenMU\deploy\all-in-one
docker compose down
docker volume rm all-in-one_dbdata
docker compose up -d
```

---

## Cambiar Version del Juego

El servidor soporta multiples versiones. Para cambiar:

1. Abre el Admin Panel: http://localhost
2. Ve a **Setup** en el menu
3. Selecciona la version deseada:
   - Season 6 Episode 3 (por defecto)
   - Season 5 Episode 4
   - Season 3 Episode 1
   - Version 0.95d
   - Version 0.75
4. Haz clic en **Install**
5. Espera a que se configure la base de datos

---

## Estructura del Proyecto

```
MuLegolas/
├── OpenMU/                      # Codigo fuente del servidor
│   ├── deploy/
│   │   └── all-in-one/          # Configuracion Docker
│   ├── src/                     # Codigo fuente C#
│   └── ...
├── MUClient/                    # Cliente del juego
│   └── MU Client 1.04d - Season 6E3/
│       ├── main.exe             # Ejecutable del juego
│       └── ...
├── ClientLauncher/             # Launcher de OpenMU
│   ├── MUnique.OpenMU.ClientLauncher.exe
│   └── launcher.config         # Configuracion del launcher
└── README.md                    # Este archivo
```

---

## Enlaces Utiles

| Recurso | Enlace |
|---------|--------|
| Repositorio OpenMU | https://github.com/MUnique/OpenMU |
| Releases OpenMU | https://github.com/MUnique/OpenMU/releases |
| Discord OpenMU | https://discord.gg/2u5Agkd |
| Blog OpenMU | https://munique.net |
| Wiki OpenMU | https://github.com/MUnique/OpenMU/wiki |

---

## Webs para Jugadores (Opcionales)

| Proyecto | Enlace |
|----------|--------|
| openmu-website | https://github.com/antonioanerao/openmu-website |
| open-mu-web | https://github.com/mamfloo/open-mu-web |

---

## Licencia

Este proyecto utiliza OpenMU, licenciado bajo MIT License.
- Ver LICENSE en: https://github.com/MUnique/OpenMU/blob/master/LICENSE

---

## Creditos

- **OpenMU** - MUnique y contribuidores
- **Servidor original** - Webzen
- **Cliente parcheado** - Comunidad OpenMU

---

## Soporte

- **GitHub Issues:** https://github.com/MUnique/OpenMU/issues
- **Discord:** https://discord.gg/2u5Agkd
- **Documentacion:** https://github.com/MUnique/OpenMU/wiki

---

## Inicio Rapido (Resumen)

```powershell
# 1. Clonar repositorio
git clone https://github.com/MUnique/OpenMU.git

# 2. Iniciar servidor
cd OpenMU\deploy\all-in-one
docker compose up -d --no-build

# 3. Esperar 1 minuto (inicializacion)

# 4. Abrir Admin Panel
start http://localhost

# 5. Login: admin / openmu

# 6. Descargar cliente y launcher (ver seccion Cliente de Juego)

# 7. Configurar launcher con IP: 127.127.127.127

# 8. Jugar con cuenta: test1 / test1
```

---

**Disfruta tu servidor MU Online!**
