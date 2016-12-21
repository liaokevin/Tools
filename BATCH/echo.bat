REM  echo on   打开命令回显，每执行一条命令均会先显示该条命令
REM  echo off  关闭命令回显，不显示执行的命令令
REM  echo [message] 打开及关闭回显，通过@命令
echo on
type a.txt
@echo 关闭回显命令
echo 关闭回显命令
echo off
type a.txt 