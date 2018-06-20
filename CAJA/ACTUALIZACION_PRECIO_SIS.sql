use SIGSALUD
declare @lccodcpt varchar(13) = '11042'
select CODCPT, * from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '7' and codcpt = @lccodcpt
select PRECIOE from PRECIO where ITEM  in (select item from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '7' and codcpt = @lccodcpt)


SELECT * FROM dbo.NTARIFA_SIS_23JUNIO

SELECT * INTO dbo.NTARIFA_SIS_23JUNIO_BACK FROM dbo.NTARIFA_SIS_23JUNIO

