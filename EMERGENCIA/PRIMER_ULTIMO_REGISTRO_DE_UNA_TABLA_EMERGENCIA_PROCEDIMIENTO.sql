/* traer el primer registro y ultimo registrio de una tabla  */ 
Declare @lultimo int

select @lultimo = MAX(ID_PROCE_WEB) from dbo.EMERGENCIA_PROC_WEB

Select top 1 ID_PROCE_WEB as PRIMERO,  * from dbo.EMERGENCIA_PROC_WEB
select ID_PROCE_WEB AS ULTIMO, * from dbo.EMERGENCIA_PROC_WEB where ID_PROCE_WEB = @lultimo
Select top 1 * from dbo.EMERGENCIA_PROC_WEB
union
select  * from dbo.EMERGENCIA_PROC_WEB where ID_PROCE_WEB = @lultimo

