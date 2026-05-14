@echo off
REM Script de gerenciamento do Pipeline IoT
REM Uso: ./manage.bat [comando]

setlocal enabledelayedexpansion

if "%1"=="" (
    echo.
    echo ╔════════════════════════════════════════╗
    echo ║   Pipeline IoT - Gerenciador Docker   ║
    echo ╚════════════════════════════════════════╝
    echo.
    echo Comandos disponíveis:
    echo   start       - Iniciar todos os serviços
    echo   stop        - Parar todos os serviços
    echo   restart     - Reiniciar todos os serviços
    echo   status      - Ver status dos serviços
    echo   logs        - Ver logs em tempo real
    echo   clean       - Parar e remover containers
    echo   test        - Testar publicação MQTT
    echo   psql        - Conectar ao PostgreSQL
    echo   build       - Reconstruir imagens Docker
    echo.
    echo Exemplos:
    echo   manage.bat start
    echo   manage.bat logs
    echo   manage.bat stop
    echo.
    goto :eof
)

if "%1"=="start" (
    echo 🚀 Iniciando serviços...
    docker-compose up -d
    echo ✓ Serviços iniciados!
    echo.
    echo Acesse:
    echo   - Grafana: http://localhost:3001 (admin/admin)
    echo   - API:     http://localhost:3000/api/latest
    echo   - MQTT:    mqtt://localhost:1883
    echo.
    echo Aguarde 30-60 segundos para todos os serviços estarem prontos...
    goto :eof
)

if "%1"=="stop" (
    echo 🛑 Parando serviços...
    docker-compose down
    echo ✓ Serviços parados!
    goto :eof
)

if "%1"=="restart" (
    echo 🔄 Reiniciando serviços...
    docker-compose restart
    echo ✓ Serviços reiniciados!
    goto :eof
)

if "%1"=="status" (
    echo 📊 Status dos serviços:
    echo.
    docker-compose ps
    goto :eof
)

if "%1"=="logs" (
    echo 📋 Exibindo logs em tempo real...
    echo (Pressione Ctrl+C para sair)
    echo.
    docker-compose logs -f
    goto :eof
)

if "%1"=="clean" (
    echo 🧹 Removendo containers...
    docker-compose down --remove-orphans
    echo ✓ Containers removidos!
    goto :eof
)

if "%1"=="test" (
    echo 🧪 Testando conexão MQTT...
    echo.
    docker-compose exec -T hivemq mosquitto_pub -h localhost -t opaiot/temperature -m "{\"temperature\": 25.5, \"humidity\": 60.0, \"deviceId\": \"esp32-dht22\", \"location\": \"sala\"}"
    echo ✓ Mensagem de teste enviada!
    echo.
    timeout /t 2
    echo Verificando dados na API...
    powershell -Command "Invoke-WebRequest http://localhost:3000/api/latest | Select-Object -ExpandProperty Content"
    goto :eof
)

if "%1"=="psql" (
    echo 🗄️  Conectando ao PostgreSQL...
    docker-compose exec postgres psql -U iot_user -d iot_database
    goto :eof
)

if "%1"=="build" (
    echo 🏗️  Reconstruindo imagens Docker...
    docker-compose build --no-cache
    echo ✓ Imagens reconstruídas!
    goto :eof
)

echo Comando desconhecido: %1
echo Execute "manage.bat" sem argumentos para ver a ajuda.
