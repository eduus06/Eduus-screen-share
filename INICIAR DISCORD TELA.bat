@echo off
title Sala de Tela - Painel do Discord
chcp 65001 >nul
cd /d "%~dp0"

echo =====================================================================
echo                🚀 SALA DE TELA - DISCORD BOT / ATIVIDADE
echo =====================================================================
echo.

:: 1. Verifica se o Node.js está instalado
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERRO] O Node.js não foi encontrado no seu computador!
    echo.
    echo Para que o bot funcione, instale o Node.js (versão LTS).
    echo Abrindo o site de download para você...
    start https://nodejs.org
    echo.
    echo Depois de instalar, feche esta janela e dê dois cliques neste arquivo de novo.
    echo.
    pause
    exit /b
)

:: 2. Verifica se as dependências (node_modules) já foram instaladas
if not exist "node_modules\" (
    echo [1/2] Instalando componentes necessários pela primeira vez...
    echo (Isso leva menos de 1 minuto, por favor aguarde)
    echo.
    call npm install
    if %errorlevel% neq 0 (
        echo.
        echo [ERRO] Falha ao baixar componentes. Verifique sua conexão com a internet.
        pause
        exit /b
    )
    echo.
    echo [OK] Componentes instalados com sucesso!
    echo.
)

:: 3. Lembrete amigável de favoritar
echo =====================================================================
echo  ⭐ DICA DE OURO: Quando o site abrir no seu navegador,
echo     pressione [Ctrl + D] para salvar o painel nos seus FAVORITOS!
echo =====================================================================
echo.
echo Iniciando o servidor e o túnel seguro...
echo (Para desligar a qualquer momento, aperte Ctrl + C ou feche esta janela)
echo.

:: 4. Executa o inicializador rápido
npm run start:fast

pause