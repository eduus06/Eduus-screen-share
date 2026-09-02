@echo off
title Criar Atalho na Area de Trabalho
chcp 65001 >nul
cd /d "%~dp0"

echo Criando atalho na sua Area de Trabalho...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut([System.IO.Path]::Combine([Environment]::GetFolderPath('Desktop'), 'Sala de Tela Discord.lnk')); $s.TargetPath = '%~dp0INICIAR DISCORD TELA.bat'; $s.WorkingDirectory = '%~dp0'; $s.IconLocation = '%~dp0personagem.png'; $s.Save()"

if %errorlevel% equ 0 (
    echo.
    echo =======================================================
    echo  [SUCESSO] Atalho criado na sua Area de Trabalho!
    echo =======================================================
) else (
    echo.
    echo [AVISO] Nao foi possivel criar o atalho automaticamente.
)
echo.
pause
