# Hola Docker + CI/CD

App mínima con Node + Express, dockerizada y con pipeline a Docker Hub y Render.

## Ejecutar local
```bash
npm install
npm start
# http://localhost:3000
```

## Construir imagen Docker local
```bash
docker build -t TU_USUARIO/hola-docker:1.0 .
docker run -p 3000:3000 TU_USUARIO/hola-docker:1.0
```

## CI/CD con GitHub Actions
Secretos requeridos en Settings → Secrets and variables → Actions:
- DOCKER_USERNAME
- DOCKER_PASSWORD (Access Token de Docker Hub)
- RENDER_API_KEY
- RENDER_SERVICE_ID (como srv-xxxxxxxxxxxx)

Al hacer push a `main`:
- Construye y publica `TU_USUARIO/hola-docker:latest` y `:SHA`
- Dispara un deploy en Render
