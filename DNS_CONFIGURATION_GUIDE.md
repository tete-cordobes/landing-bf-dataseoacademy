# 🌐 Guía de Configuración DNS - GitHub Pages

## Configuración Requerida

Para que **landing-bf.dataseoacademy.com** apunte a tu GitHub Pages:

```
Tipo: CNAME
Nombre: landing-bf
Valor: tete-cordobes.github.io
TTL: 3600 (o Auto)
```

---

## 📌 Configuración por Registrador

### 🔷 CLOUDFLARE (Recomendado)

1. **Inicia sesión en Cloudflare**: https://dash.cloudflare.com
2. Selecciona tu dominio: `dataseoacademy.com`
3. Ve a **DNS** → **Records**
4. Click en **"Add record"**
5. Configura:
   - **Type**: `CNAME`
   - **Name**: `landing-bf`
   - **Target**: `tete-cordobes.github.io`
   - **Proxy status**: ⚠️ **DNS only** (desactiva la nube naranja)
   - **TTL**: `Auto`
6. Click **"Save"**

**IMPORTANTE**: El proxy naranja de Cloudflare puede causar problemas con GitHub Pages. Debe estar en gris (DNS only).

---

### 🔶 GODADDY

1. **Inicia sesión**: https://account.godaddy.com
2. Ve a **"My Products"** → **"DNS"**
3. Busca tu dominio `dataseoacademy.com` y click en **"DNS"**
4. En la sección **"Records"**, click en **"Add"**
5. Configura:
   - **Type**: `CNAME`
   - **Name**: `landing-bf`
   - **Value**: `tete-cordobes.github.io`
   - **TTL**: `1 Hour` (3600 segundos)
6. Click **"Save"**

---

### 🔵 NAMECHEAP

1. **Inicia sesión**: https://www.namecheap.com
2. Ve a **"Domain List"** y selecciona `dataseoacademy.com`
3. Click en **"Manage"**
4. Ve a la pestaña **"Advanced DNS"**
5. Click en **"Add New Record"**
6. Configura:
   - **Type**: `CNAME Record`
   - **Host**: `landing-bf`
   - **Value**: `tete-cordobes.github.io`
   - **TTL**: `Automatic`
7. Click en el **check verde** para guardar

---

### 🟢 GOOGLE DOMAINS / SQUARESPACE

1. **Inicia sesión**: https://domains.google.com (o Squarespace si fue migrado)
2. Selecciona tu dominio `dataseoacademy.com`
3. Ve a **"DNS"** en el menú lateral
4. Scroll hasta **"Custom resource records"**
5. Configura:
   - **Name**: `landing-bf`
   - **Type**: `CNAME`
   - **TTL**: `3600`
   - **Data**: `tete-cordobes.github.io`
6. Click **"Add"**

---

### 🔴 HOSTINGER

1. **Inicia sesión**: https://hpanel.hostinger.com
2. Ve a **"Dominios"** → selecciona `dataseoacademy.com`
3. Click en **"DNS / Nameservers"**
4. En la sección **"DNS Records"**, click en **"Añadir registro"**
5. Configura:
   - **Type**: `CNAME`
   - **Name**: `landing-bf`
   - **Points to**: `tete-cordobes.github.io`
   - **TTL**: `3600`
6. Click **"Añadir"**

---

### 🟣 BLUEHOST / SITEGROUND / cPanel

1. **Inicia sesión** en tu panel de control
2. Busca la sección **"DNS Management"** o **"Zone Editor"**
3. Selecciona el dominio `dataseoacademy.com`
4. Click en **"Add Record"** o **"+ CNAME Record"**
5. Configura:
   - **Name**: `landing-bf.dataseoacademy.com.` (algunos requieren el punto final)
   - **Type**: `CNAME`
   - **Value/Points to**: `tete-cordobes.github.io.` (algunos requieren el punto final)
   - **TTL**: `14400` o `3600`
6. Click **"Add Record"** o **"Save"**

---

### 🟠 OTROS REGISTRADORES

**Pasos generales**:

1. Busca la sección de **"DNS Management"**, **"DNS Records"**, o **"Zone Editor"**
2. Agrega un nuevo registro tipo **CNAME**
3. Completa los campos:
   - **Host/Name/Alias**: `landing-bf`
   - **Points to/Value/Target**: `tete-cordobes.github.io`
   - **TTL**: `3600` (1 hora) o `Auto`

---

## ✅ VERIFICACIÓN

### 1. Verificar configuración DNS (tarda 5-30 minutos):

**Desde tu terminal**:
```bash
dig landing-bf.dataseoacademy.com CNAME +short
```

**Resultado esperado**:
```
tete-cordobes.github.io.
```

### 2. Verificar propagación mundial:

Usa esta herramienta online:
```
https://dnschecker.org/#CNAME/landing-bf.dataseoacademy.com
```

Deberías ver puntos verdes en todo el mundo apuntando a `tete-cordobes.github.io`

### 3. Verificar que GitHub Pages lo detecta:

1. Ve a: https://github.com/tete-cordobes/landing-bf-dataseoacademy/settings/pages
2. Deberías ver: **"Your site is ready to be published at https://landing-bf.dataseoacademy.com"**
3. Después de unos minutos: **"Your site is live at https://landing-bf.dataseoacademy.com"**

---

## ⏱️ TIEMPOS DE PROPAGACIÓN

| Paso                    | Tiempo estimado      |
|-------------------------|----------------------|
| Guardar configuración   | Inmediato            |
| Propagación DNS local   | 5-30 minutos         |
| Propagación DNS mundial | 1-48 horas (típico: 1-2h) |
| Certificado SSL GitHub  | 10-30 minutos después de DNS |

---

## 🔒 CERTIFICADO SSL (HTTPS)

**No necesitas configurar nada**. GitHub Pages genera automáticamente un certificado SSL gratuito una vez que:

1. ✅ El DNS esté propagado
2. ✅ GitHub Pages detecte el dominio personalizado
3. ✅ Hayas habilitado "Enforce HTTPS" en GitHub Pages settings

**Pasos para habilitar HTTPS**:

1. Espera a que el DNS se propague (verifica con `dig` o dnschecker.org)
2. Ve a: https://github.com/tete-cordobes/landing-bf-dataseoacademy/settings/pages
3. Espera a que aparezca el check verde: ✅ "DNS check successful"
4. Marca la opción: ☑️ **"Enforce HTTPS"**
5. Espera 10-30 minutos para que se genere el certificado

---

## ❓ TROUBLESHOOTING

### Problema: "Improper configuration warning"

**Solución**:
1. Verifica que el CNAME apunte exactamente a `tete-cordobes.github.io` (sin www, sin https)
2. Si usas Cloudflare, desactiva el proxy (nube gris, no naranja)
3. Espera 15-30 minutos y refresca la página de GitHub Pages settings

### Problema: "DNS_PROBE_FINISHED_NXDOMAIN"

**Solución**:
1. El DNS aún no se ha propagado. Espera más tiempo (hasta 48h en casos extremos)
2. Verifica que guardaste correctamente el registro CNAME
3. Usa `dig` o dnschecker.org para verificar

### Problema: "Certificate error" o "Not secure"

**Solución**:
1. El certificado SSL aún no se ha generado. Espera 10-30 minutos
2. Verifica que el DNS esté completamente propagado
3. En GitHub Pages settings, desmarca y vuelve a marcar "Enforce HTTPS"

### Problema: "404 - There isn't a GitHub Pages site here"

**Solución**:
1. El repositorio aún no tiene los archivos. Completa el push primero
2. GitHub Pages no está activado. Ve a Settings → Pages y configúralo
3. Espera 2-5 minutos para que GitHub Pages construya el sitio

---

## 📊 EJEMPLO VISUAL - CLOUDFLARE

```
┌─────────────────────────────────────────────────────┐
│ DNS Records                                         │
├──────────┬──────────────┬──────────────────────┬───┤
│ Type     │ Name         │ Content              │ ☁ │
├──────────┼──────────────┼──────────────────────┼───┤
│ CNAME    │ landing-bf   │ tete-cordobes.github │ ⚪│ ← Debe estar GRIS
│          │              │ .io                  │   │   (DNS only)
└──────────┴──────────────┴──────────────────────┴───┘
```

---

## 📞 NECESITAS AYUDA?

Si tu registrador no está en la lista o tienes dudas:

1. Busca en Google: **"[tu registrador] agregar registro CNAME"**
2. Contacta al soporte de tu registrador
3. Proporciona esta información:
   - Quieres agregar un subdominio: `landing-bf.dataseoacademy.com`
   - Debe apuntar a: `tete-cordobes.github.io` (tipo CNAME)

---

## ✨ RESUMEN RÁPIDO

1. Ve al panel DNS de tu registrador de dominios
2. Agrega un registro **CNAME**:
   - **Name**: `landing-bf`
   - **Value**: `tete-cordobes.github.io`
3. Guarda y espera propagación (5-30 min típicamente)
4. Verifica con: `dig landing-bf.dataseoacademy.com CNAME +short`
5. Ve a GitHub Pages settings y habilita HTTPS cuando esté disponible

---

**Fecha de creación**: 15 de noviembre de 2024
**Tu dominio final será**: https://landing-bf.dataseoacademy.com
