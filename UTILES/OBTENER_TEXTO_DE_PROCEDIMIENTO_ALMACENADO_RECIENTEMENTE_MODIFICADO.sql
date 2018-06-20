set nocount on 
declare @ProcName nvarchar(100)
declare @ProcSortOrder int
declare @CursorProcList CURSOR 
declare @StoredProcs TABLE
(
SortOrder int,
ProcedureName varchar(100),
ProcedureCode varchar(7500)
) 
Insert Into @StoredProcs
SELECT 0 AS SortOrder, name, SC.Text
FROM sys.objects SO INNER JOIN SysComments SC
ON SO.OBJECT_ID = SC.ID
WHERE type = 'P'
AND YEAR(modify_date)=2010 AND month(modify_date)=1 AND DAY(modify_date)>20
ORDER BY modify_date DESC
set nocount off 
SET @CursorProcList = CURSOR FAST_FORWARD
FOR
select ProcedureName,
SortOrder = (select count(*)
from @StoredProcs B
WHERE (A.ProcedureName <> B.ProcedureName)
and (REPLACE(UPPER(B.ProcedureCode),B.ProcedureName,'')
LIKE '%' + upper(A.ProcedureName) + '%')
)
from @StoredProcs A
order by SortOrder Desc
OPEN @CursorProcList
FETCH NEXT FROM @CursorProcList
INTO @ProcName,@ProcSortOrder 
WHILE @@FETCH_STATUS = 0
BEGIN 
PRINT 'if exists (select * from dbo.sysobjects '
PRINT ' where id = object_id(N' + char(39) + '[dbo].[' + @ProcName + ']' + char(39) + ')'
PRINT ' and OBJECTPROPERTY(id, N' + char(39) + 'IsProcedure' + char(39) + ') = 1) '
PRINT ' drop procedure ' + @ProcName 
PRINT ' GO '
PRINT ' SET QUOTED_IDENTIFIER OFF '
PRINT ' GO '
PRINT ' SET ANSI_NULLS OFF '
PRINT ' GO'
exec sp_helptext @ProcName
PRINT ' GO '
PRINT ' SET QUOTED_IDENTIFIER OFF '
PRINT ' GO '
PRINT ' SET ANSI_NULLS ON '
PRINT ' GO ' 
FETCH NEXT FROM @CursorProcList
INTO @ProcName,@ProcSortOrder 
END 
CLOSE @CursorProcList
DEALLOCATE @CursorProcList 