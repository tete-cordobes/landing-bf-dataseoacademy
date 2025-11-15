# 🚀 Instrucciones de Deployment - GitHub Pages

## ✅ Trabajo Completado

1. ✅ **Imágenes rotas corregidas** (8 imágenes reemplazadas)
2. ✅ **Repositorio creado** en GitHub: `tete-cordobes/landing-bf-dataseoacademy`
3. ✅ **Archivo CNAME creado** con el dominio: `landing-bf.dataseoacademy.com`
4. ✅ **Script de deployment creado**: `deploy-to-github.sh`

---

## 📦 Paso 1: Push al Repositorio (COMPLETAR)

El push automático puede requerir autenticación. Ejecuta manualmente:

```bash
cd "/Users/josegilartealvarez/Desktop/Landing Alan/landing-alan-main"

# Verificar estado
git status

# Hacer push
git push origin main
```

**Si pide credenciales**, usa GitHub CLI:
```bash
gh auth login
# Selecciona: GitHub.com → HTTPS → Yes → Login with a web browser
# Luego intenta el push de nuevo
git push origin main
```

**Alternativa - Usar el script automático**:
```bash
./deploy-to-github.sh
```

---

## ⚙️ Paso 2: Configurar GitHub Pages

### Opción A: Configuración Manual en GitHub

1. Ve a: https://github.com/tete-cordobes/landing-bf-dataseoacademy/settings/pages

2. En **"Build and deployment"**:
   - **Source**: Deploy from a branch
   - **Branch**: `main` (root)
   - Click "Save"

3. En **"Custom domain"**:
   - Ingresa: `landing-bf.dataseoacademy.com`
   - Click "Save"
   - ✅ Marca "Enforce HTTPS" (después de que el DNS se propague)

### Opción B: Configuración Automática con API

Ejecuta estos comandos:

```bash
# Habilitar GitHub Pages
gh api repos/tete-cordobes/landing-bf-dataseoacademy/pages \
  --method POST \
  -f source[branch]=main \
  -f source[path]=/ \
  -f https_enforced=true

# Configurar dominio personalizado
gh api repos/tete-cordobes/landing-bf-dataseoacademy/pages \
  --method PUT \
  -f cname=landing-bf.dataseoacademy.com
```

---

## 🌐 Paso 3: Configurar DNS en dataseoacademy.com

Necesitas agregar un registro CNAME en tu proveedor de DNS:

### Configuración DNS:

| Tipo  | Nombre (Host) | Valor (Apunta a)           | TTL  |
|-------|---------------|----------------------------|------|
| CNAME | landing-bf    | tete-cordobes.github.io.   | 3600 |

**Nota**: El punto final (`.`) es importante en algunos proveedores DNS.

### Ejemplo para Cloudflare:
```
Type: CNAME
Name: landing-bf
Content: tete-cordobes.github.io
Proxy status: DNS only (⚠️ Desactivar el proxy naranja)
TTL: Auto
```

### Ejemplo para cPanel / WHM:
```
Name: landing-bf.dataseoacademy.com.
Type: CNAME
Record: tete-cordobes.github.io.
```

---

## ✅ Paso 4: Verificación

### 1. Verificar que el repositorio tiene los archivos:
https://github.com/tete-cordobes/landing-bf-dataseoacademy

**Archivos críticos que deben estar**:
- ✅ `index.html`
- ✅ `styles.css`
- ✅ `script.js`
- ✅ `CNAME`

### 2. Verificar GitHub Pages:
https://github.com/tete-cordobes/landing-bf-dataseoacademy/settings/pages

**Deberías ver**:
- ✅ "Your site is live at https://landing-bf.dataseoacademy.com"
- ✅ HTTPS habilitado con certificado válido

### 3. Verificar DNS (puede tardar hasta 48 horas):

```bash
# Verificar propagación DNS
dig landing-bf.dataseoacademy.com CNAME +short
# Debería retornar: tete-cordobes.github.io.

# O usar herramientas online:
# https://dnschecker.org/#CNAME/landing-bf.dataseoacademy.com
```

### 4. Acceder al sitio:

```
URL final: https://landing-bf.dataseoacademy.com
```

⏱️ **Tiempo estimado de propagación**:
- GitHub Pages build: 2-5 minutos
- DNS propagación: 5 minutos a 48 horas (típicamente < 1 hora)
- Certificado SSL: 10-30 minutos después de DNS

---

## 🐛 Troubleshooting

### Problema: "404 - There isn't a GitHub Pages site here"

**Solución**:
1. Verifica que hiciste push de los archivos
2. Verifica GitHub Pages settings
3. Espera 2-5 minutos para el build inicial

### Problema: "Certificate error" o "Not secure"

**Solución**:
1. Espera 10-30 minutos para que se genere el certificado SSL
2. Verifica que el DNS esté propagado correctamente
3. Ve a Settings → Pages y habilita "Enforce HTTPS"

### Problema: DNS no resuelve

**Solución**:
1. Verifica la configuración DNS en tu proveedor
2. Asegúrate de usar `landing-bf` como subdomain (no `www.landing-bf`)
3. En Cloudflare, desactiva el proxy (nube naranja)
4. Espera propagación (usa `dig` o dnschecker.org)

### Problema: "Improperly configured"

**Solución**:
1. Verifica que el archivo `CNAME` contenga exactamente: `landing-bf.dataseoacademy.com`
2. Re-ingresa el dominio en GitHub Pages settings
3. Espera unos minutos y refresca

---

## 📊 Resumen de Cambios Realizados

### Imágenes Corregidas (2024 → 2025 o nombres incorrectos):
1. `maia-caffarena.jpeg` → `maia.jpeg`
2. `jose-gilarte.jpeg` → `gilarte.jpeg`
3. `sebastian-torres.jpeg` → `seba-torres.jpeg`
4. `fernando-matallo.jpeg` → `fer-matallo.jpeg`
5. `jose-luis-marin.jpeg` → `joseluisma.jpeg`
6. `fedra-abagianos.jpeg` → `Fedra.jpeg` (2025/10)
7. `andreina-rincon.jpeg` → `Andreina.jpeg` (2025/10)
8. `nicolas-billia.png` → `foto_nico.jpeg`

### URLs con Fechas Corregidas (2024 → 2025):
1. N8N Workflows: `2024/10/...10-21` → `2025/10/...10-21`
2. Soporte 24/7: `2024/10/...10-22` → `2025/10/...10-22`
3. Diploma: `2024/10/diploma` → `2025/10/diploma`
4. Alan Preiti: `2024/04/Alan` → `2025/04/Alan`
5. José Gilarte: `2024/08/...08-05` → `2025/08/...08-05`

---

## 📞 Soporte

Si tienes problemas con el deployment:

1. **GitHub Pages Status**: https://www.githubstatus.com/
2. **GitHub Docs**: https://docs.github.com/en/pages
3. **DNS Checker**: https://dnschecker.org/

---

## 🎉 ¡Listo!

Una vez que DNS se propague y el certificado SSL se genere, tu landing page estará disponible en:

🌐 **https://landing-bf.dataseoacademy.com**

El sitio se actualizará automáticamente cada vez que hagas push a la rama `main` del repositorio.

---

**Fecha de creación**: 15 de noviembre de 2024
**Repositorio**: https://github.com/tete-cordobes/landing-bf-dataseoacademy
**Dominio**: landing-bf.dataseoacademy.com
