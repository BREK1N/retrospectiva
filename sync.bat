@echo off
chcp 65001 > nul
cd /d "C:\Users\Lucas\Documents\GitHub\retrospectiva"

echo.
echo  Retrospectiva - Sincronizar com GitHub
echo  ========================================
echo.

git add data/config.json
for %%f in (music_*.mp3) do git add "%%f"

git diff --staged --quiet
if %errorlevel% == 0 (
  echo  Nenhuma alteracao encontrada.
  echo  Faca alteracoes no admin e use "Salvar no computador" antes.
  echo.
  pause
  exit /b 0
)

set "DATA=%date:~6,4%-%date:~3,2%-%date:~0,2%"
git commit -m "Atualiza dados - %DATA%"
git push

echo.
echo  Pronto! Site atualizado em:
echo  https://brek1n.github.io/retrospectiva
echo.
pause
