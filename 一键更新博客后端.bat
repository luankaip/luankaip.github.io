@echo off
:: 使用windows terminal打开bat文件
:: %0: 指代脚本本身
if not defined terminal set terminal=1 && start wt --title "PowerShell" %0 && exit

:: 设置字符集为UTF-8
chcp 65001
:: 设置字符集为GBK（简体中文默认）
:: chcp 936

:: 获取bat文件所在的位置并进入
echo 路径：%~dp0
cd /d %~dp0
:: dir

:: 清屏
cls

:: 命令从此处开始
set time=%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2%
echo %time%
call git add .
call git commit -m "%time%" .
call git push git@github.com:luankaip/luankaip.github.io.git blog
pause