# Snakes & Ladders - Modal Verbs Edition

## Descripción
Juego clásico de serpientes y escaleras con modal verbs en inglés, adaptado para móvil y multijugador.

## Estructura por Capas

### 📂 public/
Contiene todos los archivos frontend estáticos:
- `index.html` - Juego completo con Tailwind CSS
- Lógica de juego, tablero, dados, multijugador

### 📂 docker/
Configuración para despliegue en Coolify/Nginx:
- `Dockerfile` - Usa nginx:alpine para servir archivos estáticos
- Configuración Nginx optimizada para HTML estático

### 📂 scripts/
Scripts de ayuda para deployment:
- `deploy.sh` - Script de validación y preparación

### 📂 docs/
Documentación adicional (vacío por ahora, se puede expandir)

## Despliegue en Coolify

### Requisitos Previos
- Repositorio en GitHub: `https://github.com/frankalexander-GM/snakes-ladders`
- Acceso a Coolify

### Pasos de Despliegue

1. **Crear nuevo servicio en Coolify**
   - Projects → New Server → Git Repository
   - Repository URL: `https://github.com/frankalexander-GM/snakes-ladders`
   - Branch: `main`

2. **Configuración Docker**
   - Dockerfile location: `/docker/Dockerfile`
   - La aplicación servirá en puerto 80

3. **Dominio Personalizado** (Opcional)
   - En Settings → Custom Domains agregar: `c.proyecto.sbs`
   - Configurar DNS en tu proveedor apuntando a Coolify

4. **Desplegar**
   - Click en Deploy o Save & Deploy
   - Esperar a que termine la construcción

5. **Probar**
   - Acceder en la URL proporcionada por Coolify
   - Verificar que el juego carga correctamente

## Solución de Problemas

### Bad Gateway Error
Si aparece "Bad Gateway":
- Verificar que el Dockerfile esté en la raíz `/docker/Dockerfile`
- Revisar logs en Coolify → Deployments
- Asegurarse de que Nginx esté configurando correctamente

### Dominio no funciona
- Esperar 5-10 minutos para propagación DNS
- Verificar que el Custom Domain esté agregado en Coolify Settings
- Probar primero sin dominio usando la URL temporal de Coolify

## Características
- ✅ Multijugador (2-4 jugadores)
- ✅ Códigos de sala de 4 caracteres
- ✅ Diseño responsivo para móviles
- ✅ Modal verbs en inglés
- ✅ Regla: fallar pregunta = retroceder casilla
- ✅ Sin dependencias externas complejas