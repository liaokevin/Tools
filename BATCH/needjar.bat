
REM ����Ŀ¼�µ��ļ��������չ��Ϊjar,�������µ��ļ���
set souredir=D:\wk\VFSCommission\lib
set ext=*.jar
set desdir=D:\wk\VFSCommission\nlib

for /f "delims=" %%i in ('dir /b/a-d/s %souredir%\%ext%') do (
	@echo %%i
	copy  %%i  %desdir%
) 

pause