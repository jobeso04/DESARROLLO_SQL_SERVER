INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]([ID_ACTIVIDAD],[CODIGO],[DIA],[MES],[ANIO],[ESTADO],[TURNO],[HORAS])
values (71, '084374', 2, 9, 2017, '1', 'M', 3)

use bdpersonal

select  * from ACTIVIDADES
select * from dbo.ACTIVIDAD_DETALLE where  CODIGO = '084374' and MES = 9 and ANIO = 2017

delete from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = '084374'
