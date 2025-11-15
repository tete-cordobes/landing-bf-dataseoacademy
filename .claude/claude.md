# Landing Page - Data Search Console

## 📋 Descripción del Proyecto

Landing page de conversión para el curso "Data Search Console" de Data SEO Academy. Oferta especial de Black Friday con 70% de descuento.

## 🎯 Objetivo

Convertir visitantes en estudiantes del curso mediante:
- Demostración clara del valor del producto
- Testimonios sociales convincentes
- CTAs estratégicos que llevan a ThriveCart
- Video de presentación de Vimeo
- Countdown timer para crear urgencia

## 📁 Estructura del Proyecto

```
.
├── index.html              # Página principal HTML5
├── styles.css              # Estilos CSS responsive
├── script.js               # JavaScript interactivo
├── screenshots/            # Capturas de pantalla del proyecto
│   ├── hero-section.png
│   ├── hero-with-video.png
│   ├── mvp-hero.png
│   ├── landing-complete.png
│   └── landing-with-video-complete.png
├── README.md               # Documentación del usuario
└── .claude/
    └── claude.md          # Este archivo (contexto del proyecto)
```

## 🎨 Stack Tecnológico

- **HTML5**: Estructura semántica
- **CSS3**: Estilos modernos con variables CSS, Flexbox y Grid
- **JavaScript Vanilla**: Funcionalidades interactivas sin dependencias
- **Vimeo Player**: Video embebido de presentación
- **ThriveCart**: Plataforma de pago (enlaces externos)

## 🔗 Enlaces Importantes

### CTAs de Conversión (ThriveCart)
- **Plan Básico** (197 USD): https://dataseoacademy.thrivecart.com/data-search-console/
- **Plan Avanzado** (497 USD): https://dataseoacademy.thrivecart.com/automatizacion-ia-analisis-seo-bf/

### Recursos Externos
- **Video Vimeo**: https://player.vimeo.com/video/1032937964
- **Logo**: https://dataseoacademy.com/wp-content/uploads/2024/05/LOGO-DATA-SEO-2.png
- **Imágenes**: Alojadas en dataseoacademy.com/wp-content/uploads/

### Sitio Original de Referencia
- https://dataseoacademy.com/curso-data-search-console-bf

## 🏗️ Secciones de la Landing

1. **Header**
   - Logo de Data SEO Academy
   - Navegación sticky (Módulos, Instructores, FAQ, Unirse)

2. **Hero Section**
   - Título principal con underline destacado
   - Subtítulo con propuesta de valor
   - Video de Vimeo (1032937964) - responsive 16:9
   - Descripción del curso
   - CTA principal

3. **Countdown Section**
   - Timer hasta Nov 21, 2024 23:59:59
   - Contador de personas que compraron (actualizado dinámicamente)
   - Días, Horas, Minutos, Segundos

4. **Testimonials**
   - Grid de 3 testimonios con alternancia de diseño
   - Fotos de alumnos
   - Nombres, banderas, cargos
   - Enlaces a LinkedIn y entrevistas en YouTube

5. **Problem Section**
   - Título empático con el público objetivo
   - Grid de 4 pain points principales:
     - Tareas repetitivas
     - Limitación de 16 meses en GSC
     - Excel se cuelga
     - Herramientas costosas

6. **Solution Section**
   - Beneficios divididos en:
     - Tiempo completo (5 beneficios)
     - Freelancer/Consultor (5 beneficios)
   - CTA texto con urgencia
   - Botón CTA

7. **Companies Section**
   - Logos de empresas clientes (slider infinito)
   - 9 logos: Crea, Adops, Bancolombia, Adipa, Globant, Iprospect, Nomadic, Seotronix, Sinvello

8. **Course Presentation**
   - Título "Presentamos Data Search Console"
   - Imagen del curso
   - Descripción del programa
   - Público objetivo

9. **Method Section**
   - 3 pasos del método:
     - PASO 1: Datos ocultos de GSC
     - PASO 2: Auditoría automatizada
     - PASO 3: Práctica y mejora continua
   - Cada paso con imagen, descripción y bullets
   - CTA al final

10. **Modules Section** (id="modulos")
    - Título de sección
    - Grid de módulos (actualmente 2 de ejemplo)
    - Cada módulo: número, título, descripción, tiempo

11. **Pricing Section** (id="pagos")
    - Dos cards de precios:

      **Plan Básico - Data Search Console**
      - Precio original: 697 USD
      - Oferta: 197 USD (70% OFF)
      - 14 módulos, 50 soluciones
      - CTA a ThriveCart

      **Plan Avanzado - Automatización, IA & Análisis** (FEATURED)
      - Precio original: 1,697 USD
      - Oferta: 497 USD (70% OFF)
      - 23 módulos, 100 soluciones, 4 especializaciones
      - Bonus adicionales
      - CTA a ThriveCart

12. **FAQ Section** (id="faq")
    - Accordion interactivo
    - 4 preguntas frecuentes con respuestas

13. **Footer**
    - Copyright 2024

## 🎨 Paleta de Colores

```css
--primary-color: #ff6b35      /* Naranja - CTAs y acentos */
--secondary-color: #004e89    /* Azul oscuro - Títulos */
--text-dark: #1a1a1a          /* Texto principal */
--text-light: #666            /* Texto secundario */
--bg-light: #f8f9fa           /* Fondo claro */
--bg-white: #ffffff           /* Fondo blanco */
--border-color: #e0e0e0       /* Bordes */
--success-color: #28a745      /* Verde - Checks */
```

### Gradientes
- **Hero**: `linear-gradient(135deg, #667eea 0%, #764ba2 100%)`
- **Problem**: `linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%)`
- **Course Presentation**: `linear-gradient(135deg, #667eea 0%, #764ba2 100%)`

## ⚙️ Funcionalidades JavaScript

### 1. Countdown Timer
```javascript
// Fecha objetivo: Nov 21, 2024 23:59:59
// Actualización cada segundo
// Muestra: Días, Horas, Minutos, Segundos
// Al finalizar: Muestra mensaje "¡La oferta ha finalizado!"
```

### 2. FAQ Accordion
```javascript
// Click en pregunta expande/colapsa respuesta
// Solo una pregunta abierta a la vez
// Animación smooth de max-height
```

### 3. Smooth Scroll
```javascript
// Navegación suave entre secciones ancla
// Enlaces internos (#modulos, #faq, #pagos)
```

### 4. Purchase Counter
```javascript
// Contador inicial: 27 personas
// Se incrementa aleatoriamente cada 30 segundos
// Simula compras en tiempo real
```

### 5. Scroll Animations
```javascript
// Intersection Observer
// Fade in + translateY en secciones
// Threshold: 0.1
// RootMargin: -100px
```

### 6. Sticky Header
```javascript
// Comportamiento inteligente al scroll
// Clases: scroll-up, scroll-down
// Oculta/muestra header según dirección
```

## 📱 Responsive Breakpoints

```css
/* Mobile First Approach */
- Base: < 768px (mobile)
- Tablet: 768px - 1024px
- Desktop: > 1024px

/* Media Query principal */
@media (max-width: 768px) {
  - Hero title: 2rem
  - Testimonials: 1 columna
  - Benefits grid: 1 columna
  - Pricing grid: 1 columna
  - Modules grid: 1 columna
}
```

## 🎯 Optimizaciones SEO Pendientes

- [x] ✅ Estructura HTML semántica completa
- [x] ✅ Módulos completos con contenido detallado (14+23 módulos)
- [ ] Meta tags Open Graph
- [ ] Schema.org markup (Course, Organization, VideoObject)
- [ ] Sitemap.xml
- [ ] Robots.txt
- [ ] Optimización de imágenes (WebP, lazy loading)
- [ ] Minificación CSS/JS
- [ ] Critical CSS inline
- [ ] Preload de recursos clave
- [ ] Alt text descriptivos en todas las imágenes

## 📊 Analytics Pendiente

- [ ] Google Tag Manager (GTM)
- [ ] Google Analytics 4 (GA4)
- [ ] Facebook Pixel
- [ ] Hotjar o Clarity para heatmaps
- [ ] Eventos de conversión en CTAs
- [ ] Tracking de video (play, pause, complete)

## 🚀 Deployment

### Opciones:
1. **GitHub Pages** (gratuito)
2. **Netlify** (gratuito, con formularios)
3. **Vercel** (gratuito, con analytics)
4. **Hosting tradicional** (FTP/SFTP)

### Comandos útiles:
```bash
# Servidor local de desarrollo
python3 -m http.server 8000

# Abrir en navegador
open http://localhost:8000
```

## 🔄 Proceso de Actualización

### Cambiar fecha del countdown:
```javascript
// En script.js, línea 3
const countDownDate = new Date("Nov 21, 2024 23:59:59").getTime();
```

### Cambiar precios:
1. Editar valores en `index.html` sección `#pagos`
2. Actualizar enlaces de ThriveCart si es necesario

### Agregar módulos:
1. Copiar estructura de módulo existente
2. Actualizar número, título, descripción, tiempo
3. Mantener grid responsive

### Actualizar video:
```html
<!-- Cambiar src del iframe en la sección hero -->
<iframe src="https://player.vimeo.com/video/NUEVO_ID"></iframe>
```

## 📝 Notas de Desarrollo

### Decisiones de Diseño:
- **Mobile First**: Prioridad en experiencia móvil
- **Sin frameworks**: Vanilla JS para mejor performance
- **No jQuery**: JavaScript moderno nativo
- **CSS Variables**: Fácil personalización de colores
- **Aspect ratio CSS**: Video responsive sin JS

### Performance:
- **Imágenes externas**: Alojadas en CDN de dataseoacademy.com
- **Lazy loading**: No implementado aún (pendiente)
- **Minificación**: No aplicada (usar para producción)
- **HTTP/2**: Depende del hosting

### Accesibilidad:
- Contraste de colores cumple WCAG AA
- Navegación por teclado funcional
- Alt text en imágenes principales
- ARIA labels en FAQ accordion (mejorable)

## 🐛 Bugs Conocidos / Limitaciones

1. ✅ **RESUELTO - Módulos completos**: Los 23 módulos están 100% implementados con contenido detallado
2. ✅ **RESUELTO - Bug JavaScript**: Corregido problema de opacity que ocultaba secciones
3. **Imágenes externas**: Dependencia de dataseoacademy.com (considerar alojar localmente)
4. **No hay lightbox**: Los testimonios no tienen modal de ampliación
5. **Formularios**: No hay captura de emails (solo CTAs directos a pago)
6. **A/B Testing**: No implementado
7. **Analytics**: No hay tracking actualmente

## 📈 Métricas de Conversión Esperadas

### CTAs principales:
- **Hero CTA**: Primera interacción, alta visibilidad
- **Post-video CTA**: Después de ver beneficios
- **Pricing CTAs**: Decisión final de compra

### Puntos de fricción a testear:
- ¿El countdown genera urgencia o ansiedad?
- ¿El video debe tener autoplay?
- ¿Muy largo el scroll hasta precios?
- ¿Testimonios deben estar antes o después del problema?

## 🔐 Seguridad

- No hay formularios que procesen datos
- No hay cookies propias (solo de terceros si se agrega analytics)
- Enlaces externos tienen `target="_blank"` (considerar añadir `rel="noopener noreferrer"`)
- No hay scripts de terceros maliciosos

## 📞 Contacto del Proyecto

- **Cliente**: Data SEO Academy
- **Sitio web**: https://dataseoacademy.com
- **Producto**: Curso Data Search Console
- **Plataforma de pago**: ThriveCart

## 🎓 Aprendizajes del Proyecto

### Mejores prácticas aplicadas:
1. ✅ Mobile-first responsive design
2. ✅ Semantic HTML5
3. ✅ CSS Grid y Flexbox para layouts
4. ✅ JavaScript moderno (ES6+)
5. ✅ Intersection Observer para animaciones
6. ✅ CSS Variables para theming
7. ✅ Aspect ratio para videos responsive
8. ✅ Detección de viewport para animaciones condicionales

### Lecciones aprendidas en debugging:
1. **Intersection Observer puede ocultar contenido**: Siempre verificar que las secciones visibles al cargar se muestren inmediatamente
2. **Cache del navegador**: Problema común - usar servidor local y hard refresh para pruebas
3. **Debugging con DevTools**: Usar `getComputedStyle()` para verificar estilos aplicados
4. **Inline styles con opacity: 0**: Difíciles de detectar sin inspector de elementos

### Para futuras iteraciones:
- Considerar framework CSS ligero (Tailwind)
- Implementar lazy loading de imágenes
- Agregar service worker para PWA
- Mejorar accesibilidad con ARIA completo
- A/B testing de headlines y CTAs
- Integrar con CRM para email marketing

## 📚 Recursos y Referencias

- **Vimeo Player API**: https://developer.vimeo.com/player
- **ThriveCart**: Plataforma de checkout
- **CSS Aspect Ratio**: https://developer.mozilla.org/en-US/docs/Web/CSS/aspect-ratio
- **Intersection Observer**: https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API

---

## 📝 Historial de Cambios

### Sesión 2 - 14 de noviembre de 2024 (Tarde)
**Estado**: ✅ Producción Ready - Todos los módulos completos

#### ✅ Completado:
1. **Módulos 17-23 (Plan Avanzado) - Contenido Detallado Agregado**
   - Módulo 17: Automatización Keyword Research (45 min) - 5 bullets + 7 videos
   - Módulo 18: Análisis de la Competencia (60 min) - 5 bullets + 8 videos
   - Módulo 19: GA4 y GSC con BigQuery (90 min) - 5 bullets + 8 videos
   - Módulo 20: SEO Programático (60 min) - 5 bullets + 7 videos
   - Módulo 21: Especialización eCommerce (120 min) - 6 bullets + 8 videos
   - Módulo 22: Especialización Medios (60 min) - 6 bullets + 7 videos
   - Módulo 23: Especialización SaaS (60 min) - 6 bullets + 7 videos

2. **Bug Crítico Corregido - JavaScript Scroll Animations**
   - **Problema**: `initScrollAnimations()` ponía `opacity: 0` a todas las secciones sin mostrarlas
   - **Síntoma**: Los módulos existían en el DOM pero no eran visibles (pantalla blanca)
   - **Solución**: Detectar secciones visibles al cargar la página y mostrarlas inmediatamente
   - **Archivo modificado**: `script.js` líneas 87-125
   - **Mejoras adicionales**: Ajustado threshold (0.1 → 0.05) y rootMargin para mejor detección

#### 📊 Estado Final:
- ✅ **23 módulos completos** con contenido detallado (Plan Básico: 14, Plan Avanzado: 9 adicionales)
- ✅ Todas las secciones visibles y funcionales
- ✅ Responsive design funcionando correctamente
- ✅ Animaciones de scroll operativas

---

### Sesión 3 - 15 de noviembre de 2024
**Estado**: ✅ Sección de Beneficios Rediseñada + Repositorio Configurado

#### ✅ Completado:

1. **Rediseño de la Sección de Beneficios (Solution Section)**
   - **Objetivo**: Cambiar layout de imágenes centradas verticalmente a diseño horizontal (imagen al lado del texto)
   - **Cambios en HTML** (index.html, líneas 465-524):
     - Agregado atributo `data-label` a cada contenedor de imagen para identificación
     - Envuelto contenido de texto en `<div>` para mejor control de grid
     - Estructura final: `<div class="benefit-icon-item">` con imagen + texto

   - **Cambios en CSS** (styles.css, líneas 1460-1542):
     - Modificado `.benefit-icon-item` a `grid-template-columns: 300px 1fr`
     - Gap de 40px entre imagen y texto
     - Agregado estilo de card moderno:
       - `border: 1px solid var(--border-color)`
       - `box-shadow: var(--shadow-md)`
       - `border-radius: var(--radius)`
       - Hover effect con elevación y cambio de color de borde

     - Nuevo `.benefit-icon-image`:
       - Dimensiones fijas: 300x300px
       - Gradient background: `linear-gradient(135deg, #f5f7fa 0%, #e9ecef 100%)`
       - Border radius para consistencia visual
       - Position relative para futuras mejoras

     - Imagen dentro del contenedor:
       - `object-fit: cover` para mantener proporción
       - 100% width y height
       - Border radius heredado

2. **Corrección de URLs de Imágenes Rotas**
   - **Problema**: Múltiples imágenes con URLs incorrectas (fechas 2025 en vez de 2024)
   - **URLs Corregidas**:
     - `Captura-de-pantalla-2025-10-21` → `2024-10-21` (N8N Workflows)
     - `Captura-de-pantalla-2025-10-22` → `2024-10-22` (Soporte 24/7)
     - `diploma-1024x712.png` → URL corregida
     - `Alan-1005x1024.png` → URL corregida
     - `Captura-de-pantalla-2025-08-05` → `2024-08-05` (Jose Gilarte)

   - **Nota**: Algunas imágenes aún no existen en el servidor de dataseoacademy.com

3. **Control de Versiones - Repositorio Git**
   - Inicializado repositorio local con `git init`
   - Creado archivo `.gitignore` con exclusiones para:
     - Archivos de sistema macOS (.DS_Store)
     - IDEs (.vscode, .idea)
     - Logs y archivos temporales
   - Commit inicial con mensaje descriptivo
   - Creado repositorio público en GitHub: **landing-alan**
   - URL: https://github.com/facundozupel/landing-alan
   - Push exitoso a rama `main`

#### 🎨 Detalles de Diseño - Sección de Beneficios:

**Layout Grid**:
```css
.benefit-icon-item {
    display: grid;
    grid-template-columns: 300px 1fr;  /* Imagen fija 300px, texto flexible */
    gap: 40px;
    align-items: start;
    text-align: left;
}
```

**Card Styling**:
```css
padding: 30px;
background: var(--bg-white);
border: 1px solid var(--border-color);
border-radius: var(--radius);
box-shadow: var(--shadow-md);
transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
```

**Hover Effect**:
```css
.benefit-icon-item:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-lg);
    border-color: var(--primary-color);
}
```

**Image Container**:
```css
.benefit-icon-image {
    width: 300px;
    height: 300px;
    background: linear-gradient(135deg, #f5f7fa 0%, #e9ecef 100%);
    border-radius: var(--radius);
    overflow: hidden;
}
```

#### 📱 Responsive Behavior:

En mobile (< 768px):
```css
.benefit-icon-item {
    grid-template-columns: 1fr;  /* Stack vertical */
    gap: 20px;
}

.benefit-icon-image {
    width: 100%;
    height: auto;
    aspect-ratio: 1;  /* Mantener proporción cuadrada */
}
```

#### 🔄 Proceso de Iteración:

**Intento 1**: Layout horizontal básico
- Usuario: "horrible corrigelo"
- Revertido completamente

**Intento 2**: Mejora con dimensiones específicas
- Usuario: "horrible corrigelo"
- Refinado con mejor espaciado

**Intento 3 (Final)**: Card design con cuadrados de imagen
- Agregado estilo de card moderno
- Contenedores cuadrados de 300x300px
- Gradient backgrounds
- Data-labels para identificación
- **Resultado**: Aprobado por el usuario

#### 🐛 Lecciones Aprendidas:

1. **Iteración rápida**: El usuario prefiere ver múltiples versiones rápidas en vez de una sola "perfecta"
2. **Especificidad visual**: Los contenedores cuadrados con gradient backgrounds ayudan cuando las imágenes están rotas
3. **Card design**: El estilo de card con borders y shadows mejora significativamente la percepción de calidad
4. **Mobile-first**: Siempre considerar el responsive desde el primer diseño

#### 📊 Estado Actual del Proyecto:

- ✅ **Repositorio Git**: Configurado y sincronizado con GitHub
- ✅ **Sección de beneficios**: Rediseñada con layout horizontal y card styling
- ✅ **23 módulos**: Completos con contenido detallado
- ✅ **Responsive design**: Funcionando en mobile, tablet y desktop
- ✅ **Animaciones**: Scroll animations operativas
- ⚠️ **Imágenes**: Algunas URLs aún retornan 404 (requiere intervención del cliente)

#### 🔗 Repositorio GitHub:

- **URL**: https://github.com/facundozupel/landing-alan
- **Rama principal**: `main`
- **Último commit**: Initial commit con mejoras en sección de beneficios
- **Acceso**: Público

#### 📝 Archivos Modificados en esta Sesión:

1. **index.html** (líneas 465-524)
   - Agregados data-labels a contenedores de imagen
   - Envuelto texto en divs para grid layout

2. **styles.css** (líneas 1460-1542)
   - Modificado layout de beneficios a grid horizontal
   - Agregado estilo de cards modernos
   - Definidos contenedores de imagen cuadrados
   - Hover effects y transitions

3. **.gitignore** (nuevo archivo)
   - Configuración de exclusiones para git

4. **.claude/CLAUDE.md** (este archivo)
   - Documentación actualizada con contexto de sesión 3

#### 🚀 Para la Próxima Sesión:

**Tareas Pendientes**:
1. Resolver URLs de imágenes que aún retornan 404
2. Considerar alojar imágenes localmente para independencia
3. Implementar lazy loading para mejor performance
4. Agregar meta tags Open Graph para compartir en redes
5. Configurar Analytics (GA4, Facebook Pixel)
6. Testing cross-browser (Safari, Firefox, Edge)

**Mejoras Sugeridas**:
1. Agregar lightbox para imágenes de testimonios
2. A/B testing de headlines y CTAs
3. Implementar captura de email pre-checkout
4. Agregar más testimonios en video
5. Mejorar accesibilidad con ARIA completo

---

**Última actualización**: 15 de noviembre de 2024
**Versión**: 2.1
**Estado**: ✅ Producción Ready - Sección de beneficios mejorada y repositorio configurado
**GitHub**: https://github.com/facundozupel/landing-alan
