@echo off
title Sala de Tela - Painel do Discord
cd /d "%~dp0"

if not exist node_modules call npm install
call npm run start:fast

pause
