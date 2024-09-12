@echo off
cd "C:\projects"
git add .
git commit -m "Automated commit on %date% %time%"
git push
pause
