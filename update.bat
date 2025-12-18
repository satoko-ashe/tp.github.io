@echo off
echo 正在生成最新数据...
REM 请将下一行的路径改为你Java程序的实际位置和名称
javac DataGenerator.java && java DataGenerator

echo 正在同步到GitHub...
cd /d "你的项目完整本地路径"
git add .
git commit -m "自动更新: %date% %time%"
git push origin main

echo 数据同步完成！
pause