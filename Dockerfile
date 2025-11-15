# Dockerfile para Landing Page - Data Search Console
# Usa nginx alpine para servir archivos estáticos de forma eficiente

FROM nginx:alpine

# Copia los archivos estáticos al directorio de nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Copia la configuración personalizada de nginx (opcional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 80
EXPOSE 80

# Comando por defecto (heredado de la imagen base)
CMD ["nginx", "-g", "daemon off;"]
