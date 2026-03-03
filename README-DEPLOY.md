# XALVAJE Website - Guía de Despliegue

## Opción 1: GitHub + Vercel (Recomendada)

### Paso 1: Crear cuenta GitHub
1. Ve a https://github.com
2. Regístrate con tu email
3. Verifica tu correo

### Paso 2: Crear repositorio
1. Click en el botón verde "+" → "New repository"
2. Nombre: `xalvaje-website`
3. Selecciona "Public"
4. Click "Create repository"

### Paso 3: Subir el código

#### Opción A: Por web (más fácil)
1. En tu repositorio nuevo, click "uploading an existing file"
2. Arrastra TODA la carpeta del proyecto
3. Escribe mensaje: "Initial commit"
4. Click "Commit changes"

#### Opción B: Por terminal (más rápido)
```bash
# En tu Mac, dentro de la carpeta del proyecto
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/xalvaje-website.git
git push -u origin main
```

### Paso 4: Conectar a Vercel
1. Ve a https://vercel.com
2. Login con tu cuenta de GitHub
3. Click "Add New Project"
4. Selecciona `xalvaje-website`
5. Click "Deploy"

¡Listo! Tu web estará en: `https://xalvaje-website.vercel.app`

---

## Opción 2: Netlify (Más rápida)

1. Ve a https://netcel.com
2. Arrastra la carpeta `dist/` directamente
3. ¡Publicado!

---

## Modificar la web

### Cambiar textos:
Edita `src/config.ts`

### Cambiar imágenes:
1. Pon nueva imagen en `public/images/`
2. Actualiza la ruta en `src/config.ts`

### Ver cambios locales:
```bash
npm run dev
```
Abre http://localhost:5173

### Subir cambios:
```bash
git add .
git commit -m "Descripción del cambio"
git push
```
¡Vercel se actualiza automáticamente!

---

## Dominio personalizado

1. Compra dominio en Namecheap/Godaddy
2. En Vercel: Settings → Domains
3. Añade tu dominio
4. Configura DNS según instrucciones
5. Listo en 24-48h
