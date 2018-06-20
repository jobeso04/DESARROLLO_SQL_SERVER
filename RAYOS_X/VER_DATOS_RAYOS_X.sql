/* REVISAR RAYOS X */
DECLARE @lnombre as varchar(100) = 'PEDRO ALEXIS'
select * from rayosx where nombres like '%' + @lnombre + '%' ORDER BY FECHA DESC
select * from RAYOSX_DETALLE where RAYOSX = (select RAYOSX from rayosx where nombres like '%' + @lnombre + '%') 
select * from rayosx ORDER BY FECHA DESC