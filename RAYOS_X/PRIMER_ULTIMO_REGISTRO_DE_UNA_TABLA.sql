/* traer el primer registro y ultimo registrio de una tabla  */ 
Declare @lultimo int

select @lultimo = MAX(rayosx) from rayosx
Select top 1 RAYOSX as PRIMERO,  * from rayosx
select RAYOSX AS ULTIMO, * from RAYOSX where RAYOSX = @lultimo
Select top 1 * from rayosx
union
select  * from RAYOSX where RAYOSX = @lultimo
select * from RAYOSX_DETALLE where RAYOSX = (select  RAYOSX from RAYOSX where RAYOSX = @lultimo) 
 