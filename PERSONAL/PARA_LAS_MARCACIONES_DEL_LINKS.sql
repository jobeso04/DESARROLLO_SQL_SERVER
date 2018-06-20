/* VER REPORTE DE MARCACIONES PARA EL LINK */ 
use BDPERSONAL
declare  @lcdni int = 9879103
DECLARE @lmes int = 7
declare @lanio int = 2016

SELECT CASE WHEN DATEPART(dw,FECHA) = 1 then 'Lunes, ' WHEN DATEPART(dw,FECHA) = 2 then 'Martes, ' when DATEPART(dw,FECHA) = 3
then 'Miercoles, ' WHEN DATEPART(dw,FECHA) = 4 then 'Jueves, ' WHEN DATEPART(dw,FECHA) = 5 then 'Viernes, ' WHEN DATEPART(dw,FECHA) = 6
then 'Sabado, ' WHEN DATEPART(dw,FECHA) = 7 then 'Domingo, ' END + CONVERT(varchar(2), day(fecha)) + ' de ' + case when MONTH(fecha) = 1 then 'Enero' when MONTH(fecha) = 2 then 'Febrero' when MONTH(fecha) = 3 then 'Marzo' when MONTH(fecha) = 4 then 'Abril' 
when MONTH(fecha) = 5 then 'Mayo' when MONTH(fecha) = 6 then 'Junio'  when MONTH(fecha) = 7 then 'Julio' when MONTH(fecha) = 8 then 'Agosto' 
when MONTH(fecha) = 9 then 'Septiembre'  when MONTH(fecha) = 10 then 'Octubre' when MONTH(fecha) = 11 then 'Noviembre' when MONTH(fecha) = 12 then 'Diciembre' 
end + ' del ' + CONVERT(varchar(4), year(fecha)) fecha, hora from RELOGDIGI where Codigo = @lcdni and year(fecha) = @lanio and MONTH(fecha) = @lmes 
order by REPLACE(STR(DAY(FECHA), 2), SPACE(1), '0')   asc
