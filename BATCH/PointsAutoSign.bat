@echo off
color 1f 
title XXXXXXX积分签到
echo --------------------##########---------------------------
echo --------------------#开始签到#--------------------------
echo --------------------##########---------------------------
set str="";
curl -x "10.116.1.16:80" -d "o=clin&u=oobXEs9E1FLinwpIAYD1M2q8Cvq0"  http://t.filead.com/sqfsqd/s > E:\result.txt
set /p str=<E:\result.txt
del E:\result.txt
echo --------------------##########---------------------------
echo --------------------#结束签到#--------------------------
echo --------------------##########---------------------------
echo  %str%;
pause 

