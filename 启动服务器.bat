@echo off
echo ============================================
echo   极限二选一 - 固定网址服务器
echo ============================================
echo.
echo 正在启动本地服务器...
start /min python -m http.server 8765
echo 本地服务器已启动 (端口 8765)
echo.
echo 正在连接固定域名...
ssh -i "%USERPROFILE%\.ssh\serveo" -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R jj-extreme-choice:80:localhost:8765 serveo.net
echo.
echo 隧道已断开，按任意键退出...
pause
