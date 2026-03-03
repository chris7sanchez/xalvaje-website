#!/bin/bash

# Script de instalación para Mac
# XALVAJE Website Setup

echo "🎬 XALVAJE Website - Instalador para Mac"
echo "=========================================="
echo ""

# Verificar si Homebrew está instalado
if ! command -v brew &> /dev/null; then
    echo "📦 Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew ya está instalado"
fi

# Verificar Node.js
if ! command -v node &> /dev/null; then
    echo "📦 Instalando Node.js..."
    brew install node
else
    echo "✅ Node.js ya está instalado"
fi

# Mostrar versiones
echo ""
echo "📋 Versiones instaladas:"
node --version
npm --version

echo ""
echo "📁 Configurando proyecto..."

# Instalar dependencias
echo "⬇️  Instalando dependencias (puede tardar unos minutos)..."
npm install

echo ""
echo "✅ ¡Instalación completa!"
echo ""
echo "🚀 Para iniciar el servidor de desarrollo, ejecuta:"
echo "   npm run dev"
echo ""
echo "🌐 Luego abre: http://localhost:5173"
echo ""
echo "📖 Lee README-DEPLOY.md para publicar en internet"
