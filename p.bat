@echo off

git pull
git add content
 git commit -a -m "bat auto update:%date:~0,10%,%time:~0,8%" 
::  git commit -m "%commitMessage%" 
git push origin master
@echo all ready,

SET daoTime=5
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo 上传Git完成 ,倒计时退出: %daoTime%秒
if %daoTime%==0 (exit) else (goto dao)



