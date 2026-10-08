#!/bin/bash
# Deployment script for Snakes & Ladders Game on Coolify
# This script prepares the project for deployment

set -e

echo "🚀 Starting deployment process for Snakes & Ladders..."

# Verificar que existan los archivos necesarios
if [ ! -f "docker/Dockerfile" ]; then
    echo "❌ Error: docker/Dockerfile no encontrado"
    exit 1
fi

if [ ! -d "public" ]; then
    echo "❌ Error: public/ directory no encontrado"
    exit 1
fi

echo "✓ Estructura de proyecto verificada"

# Mostrar estructura
echo ""
echo "📋 Estructura del proyecto:"
find . -type f -not -path './.git/*' | sort

echo ""
echo "✅ Validación completada"
echo "📦 Listo para desplegar en Coolify"
echo ""
echo "Próximos pasos:"
echo "1. Ir a Coolify → New Server → Git Repository"
echo "2. URL: https://github.com/frankalexander-GM/snakes-ladders"
echo "3. Branch: main"
echo "4. Dockerfile location: /docker/Dockerfile"
echo "5. Agregar dominio custom: c.proyecto.sbs (opcional)"
echo "6. Click Deploy"