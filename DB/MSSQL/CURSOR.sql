--1 利用游标循环更新、删除MemberAccount表中的数据
DECLARE My_Cursor CURSOR --定义游标  
FOR (SELECT * FROM dbo.MemberAccount) --查出需要的集合放到游标中  
OPEN My_Cursor; --打开游标  
FETCH NEXT FROM My_Cursor ; --读取第一行数据  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        --UPDATE dbo.MemberAccount SET UserName = UserName + 'A' WHERE CURRENT OF My_Cursor; --更新  
        --DELETE FROM dbo.MemberAccount WHERE CURRENT OF My_Cursor; --删除  
        FETCH NEXT FROM My_Cursor; --读取下一行数据  
    END  
CLOSE My_Cursor; --关闭游标  
DEALLOCATE My_Cursor; --释放游标  
GO  

--2 利用游标循环更新MemberService表中的数据（更新每个用户所购买服务的时间）
DECLARE @UserId varchar(50)   
DECLARE My_Cursor CURSOR --定义游标  
FOR (SELECT UserId FROM dbo.MemberAccount) --查出需要的集合放到游标中  
OPEN My_Cursor; --打开游标  
FETCH NEXT FROM My_Cursor INTO @UserId; --读取第一行数据(将MemberAccount表中的UserId放到@UserId变量中)  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        PRINT @UserId; --打印数据(打印MemberAccount表中的UserId)  
        UPDATE dbo.MemberService SET ServiceTime = DATEADD(Month, 6, getdate()) WHERE UserId = @UserId; --更新数据  
        FETCH NEXT FROM My_Cursor INTO @UserId; --读取下一行数据(将MemberAccount表中的UserId放到@UserId变量中)  
    END  
CLOSE My_Cursor; --关闭游标  
DEALLOCATE My_Cursor; --释放游标  
GO  