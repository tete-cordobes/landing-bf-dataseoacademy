#!/bin/bash

# Script para deployar la landing page a GitHub Pages
# Dominio: landing-bf.dataseoacademy.com

echo "🚀 Iniciando deployment a GitHub Pages..."
echo ""

# Verificar que estamos en el directorio correcto
if [ ! -f "index.html" ]; then
    echo "❌ Error: No se encontró index.html. Ejecuta este script desde el directorio del proyecto."
    exit 1
fi

# Verificar autenticación de GitHub CLI
echo "📋 Verificando autenticación de GitHub CLI..."
if ! gh auth status > /dev/null 2>&1; then
    echo "❌ Error: No estás autenticado con GitHub CLI."
    echo "   Ejecuta: gh auth login"
    exit 1
fi

# Cambiar a la cuenta tete-cordobes si es necesario
echo "👤 Cambiando a cuenta tete-cordobes..."
gh auth switch --user tete-cordobes

# Configurar git credentials con GitHub CLI
echo "🔐 Configurando credenciales de git..."
gh auth setup-git

# Verificar remote origin
echo "🔗 Verificando remote..."
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "➕ Agregando remote origin..."
    git remote add origin https://github.com/tete-cordobes/landing-bf-dataseoacademy.git
fi

# Hacer push
echo "📤 Haciendo push a GitHub..."
git push origin main || git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Push completado exitosamente!"
    echo ""
    echo "🌐 Repositorio: https://github.com/tete-cordobes/landing-bf-dataseoacademy"
    echo ""
    echo "⏳ GitHub Pages se está configurando..."
    echo "   El sitio estará disponible en unos minutos en:"
    echo "   https://landing-bf.dataseoacademy.com"
    echo ""
    echo "📝 Próximos pasos:"
    echo "   1. Ve a: https://github.com/tete-cordobes/landing-bf-dataseoacademy/settings/pages"
    echo "   2. Verifica que 'Source' esté en 'Deploy from a branch: main'"
    echo "   3. Verifica que 'Custom domain' esté configurado: landing-bf.dataseoacademy.com"
    echo "   4. Espera a que el certificado SSL se genere (puede tardar unos minutos)"
    echo ""
    echo "🔧 Configuración DNS requerida en dataseoacademy.com:"
    echo "   Tipo: CNAME"
    echo "   Nombre: landing-bf"
    echo "   Valor: tete-cordobes.github.io"
    echo ""
else
    echo ""
    echo "❌ Error al hacer push. Por favor revisa los mensajes de error arriba."
    exit 1
fi
