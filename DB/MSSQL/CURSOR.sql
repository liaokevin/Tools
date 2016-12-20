--1 �����α�ѭ�����¡�ɾ��MemberAccount���е�����
DECLARE My_Cursor CURSOR --�����α�  
FOR (SELECT * FROM dbo.MemberAccount) --�����Ҫ�ļ��Ϸŵ��α���  
OPEN My_Cursor; --���α�  
FETCH NEXT FROM My_Cursor ; --��ȡ��һ������  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        --UPDATE dbo.MemberAccount SET UserName = UserName + 'A' WHERE CURRENT OF My_Cursor; --����  
        --DELETE FROM dbo.MemberAccount WHERE CURRENT OF My_Cursor; --ɾ��  
        FETCH NEXT FROM My_Cursor; --��ȡ��һ������  
    END  
CLOSE My_Cursor; --�ر��α�  
DEALLOCATE My_Cursor; --�ͷ��α�  
GO  

--2 �����α�ѭ������MemberService���е����ݣ�����ÿ���û�����������ʱ�䣩
DECLARE @UserId varchar(50)   
DECLARE My_Cursor CURSOR --�����α�  
FOR (SELECT UserId FROM dbo.MemberAccount) --�����Ҫ�ļ��Ϸŵ��α���  
OPEN My_Cursor; --���α�  
FETCH NEXT FROM My_Cursor INTO @UserId; --��ȡ��һ������(��MemberAccount���е�UserId�ŵ�@UserId������)  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        PRINT @UserId; --��ӡ����(��ӡMemberAccount���е�UserId)  
        UPDATE dbo.MemberService SET ServiceTime = DATEADD(Month, 6, getdate()) WHERE UserId = @UserId; --��������  
        FETCH NEXT FROM My_Cursor INTO @UserId; --��ȡ��һ������(��MemberAccount���е�UserId�ŵ�@UserId������)  
    END  
CLOSE My_Cursor; --�ر��α�  
DEALLOCATE My_Cursor; --�ͷ��α�  
GO  