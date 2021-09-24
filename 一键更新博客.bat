@echo off
:: 使用windows terminal打开bat文件
:: %0: 指代脚本本身
if not defined terminal set terminal=1 && start wt --title "PowerShell" %0 && exit

:: 设置字符集为UTF-8
chcp 65001
:: 设置字符集为GBK（简体中文默认）
:: chcp 936

:: 清屏
cls

:: 命令从此处开始
:: 获取bat文件所在的位置并进入
echo 路径：%~dp0
cd /d %~dp0
dir

echo test1
call hexo c
:: 非系统自带命令需要使用call
call hexo g -d
echo test2
echo test3
echo test4
echo test5
pause