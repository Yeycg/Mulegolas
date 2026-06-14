# Servidor MU Online - OpenMU

## Estado del Servidor

✅ **Servidor funcionando correctamente**

El servidor ha sido configurado y está ejecutándose con los siguientes componentes:
- **Base de datos PostgreSQL** (puerto 5433)
- **Servidor OpenMU** (puertos 44405, 44406, 55901-55906, 55980)
- **Nginx** (puerto 80) - Panel de administración

---

## Panel de Administración

Accede al panel web en: **http://localhost**

### Credenciales por defecto:
- **Usuario:** `admin`
- **Contraseña:** `openmu`

> ⚠️ **IMPORTANTE:** Cambia estas credenciales después de tu primer acceso.

---

## Puertos del Servidor

| Servicio | Puerto | Descripción |
|----------|--------|-------------|
| Admin Panel | 80 | Panel de administración web |
| Connect Server (Original) | 44405 | Puerto para cliente Season 6 |
| Connect Server (Open Source) | 44406 | Puerto para cliente open source |
| Game Server 0-5 | 55901-55906 | Servidores de juego |
| Chat Server | 55980 | Servidor de chat |

---

## Clientes Compatibles

### Cliente Season 6 Episode 3 (Recomendado)
- **Descarga:** https://mega.nz/file/a0AS0J6B (key: L6xziQ6NQIhTu_4iEScWbLi2jWZWzCiTJvoFz89KaHI)
- **Main.exe parcheado:** https://mega.nz/file/L5oWQK5I (key: wk9HMZvcwgLsLCnVkeJKIyynGgU8IciIWt9Tc_d7HSI)
- **ItemTooltip_eng.bmd parcheado:** https://mega.nz/file/3lZzVaIT (key: e7ZyHkiIJ3w6bBYnPG1ZNYYDx8BhvGtottVkitgY5Cw)

### Cliente Launcher (Para conectar automáticamente)
- **Descarga:** https://github.com/MUnique/OpenMU/releases/download/v0.9.0/MUnique.OpenMU.ClientLauncher_0.9.6.zip
- Requiere **.NET 10 Runtime**: https://dotnet.microsoft.com/download/dotnet/10.0

### Otros clientes compatibles:
- **Versión 0.95d:** https://mega.nz/folder/T8Qw3bZJ#-NK5CPOI1m9_1a2iBgvokA
- **Versión 0.75:** https://mega.nz/file/n8xnCSJC (key: 3bcO659yZhz5XAwYPm1mSe1vGa5iKsHgYUN4JNl05KM)

---

## Configuración del Cliente

### Para jugar localmente:
1. Descarga el cliente Season 6 Episode 3
2. Reemplaza el `main.exe` con la versión parcheada
3. Reemplaza `ItemTooltip_eng.bmd` con la versión parcheada
4. Usa el **Client Launcher** o edita el archivo de configuración del cliente:

**IP del servidor:** `127.127.127.127` (no uses 127.0.0.1, está bloqueado por el cliente)
**Puerto:** `44405`

### Para jugar online con amigos:
1. Necesitas abrir los puertos en tu router:
   - 80 (Admin Panel)
   - 44405-44406 (Connect Servers)
   - 55901-55906 (Game Servers)
   - 55980 (Chat Server)

2. Cambia la configuración de IP en el Admin Panel:
   - Ve a `Configuration > System`
   - Cambia "Resolve IP" a la configuración correcta
   - Usa tu IP pública

---

## Cuentas de Prueba

El servidor crea automáticamente cuentas de prueba:

| Usuario | Contraseña | Nivel | Descripción |
|---------|------------|-------|-------------|
| test0 | test0 | 1 | Cuenta básica |
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
| test400 | test400 | 400 | Máster level |
| testgm | testgm | 400 | Game Master |
| testgm2 | testgm2 | 400 | GM con Summoner/Rage Fighter |
| testunlock | testunlock | 1 | Clases desbloqueadas |
| quest1 | quest1 | 150 | Quest nivel 150 |
| quest2 | quest2 | 220 | Quest nivel 220 |
| quest3 | quest3 | 400 | Quest nivel 400 |
| ancient | ancient | 330 | Items ancient |
| socket | socket | 380 | Items socket |

---

## Comandos de Administración

### Ver estado de contenedores:
```powershell
docker ps
```

### Ver logs del servidor:
```powershell
docker logs openmu-startup -f
```

### Detener el servidor:
```powershell
cd OpenMU/deploy/all-in-one
docker compose down
```

### Reiniciar el servidor:
```powershell
cd OpenMU/deploy/all-in-one
docker compose restart
```

### Iniciar el servidor:
```powershell
cd OpenMU/deploy/all-in-one
docker compose up -d
```

---

## Cambiar Versión del Juego

1. Accede al Admin Panel: http://localhost
2. Ve a **Setup** en el menú
3. Selecciona la versión deseada
4. Haz clic en **Install**
5. Espera a que se configure la base de datos

---

## Solución de Problemas

### "Me desconecto después de seleccionar servidor"
- Ve al Admin Panel > Configuration > System
- Cambia la configuración de "Resolve IP"

### El cliente no conecta
- Asegúrate de usar IP `127.127.127.127` para pruebas locales
- Verifica que los puertos estén abiertos
- Usa el Client Launcher de OpenMU

### Error de base de datos
```powershell
cd OpenMU/deploy/all-in-one
docker compose down
docker volume rm all-in-one_dbdata
docker compose up -d
```

---

## Recursos Adicionales

- **Discord OpenMU:** https://discord.gg/2u5Agkd
- **Documentación:** https://github.com/MUnique/OpenMU
- **Blog:** https://munique.net
- **Repositorio:** https://github.com/MUnique/OpenMU

---

## Webs para Jugadores (Opcionales)

- https://github.com/antonioanerao/openmu-website
- https://github.com/mamfloo/open-mu-web

---

## Soporte

Para ayuda adicional:
- GitHub Issues: https://github.com/MUnique/OpenMU/issues
- Discord: https://discord.gg/2u5Agkd
