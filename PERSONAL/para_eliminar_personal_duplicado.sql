declare @fecha datetime
declare @ndias as int 
declare @nmes int = 7
declare @nanio int = 2017
set @fecha = '2017-07-01'
declare @fecha_dia_uno date = DATEADD(day, -datepart(day, @fecha) +1, @fecha)
set @ndias = (select DATEDIFF(dd, @fecha_dia_uno, DATEADD(mm, 1, @fecha_dia_uno))) 
SELECT CODIGO, NOMBRE FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE CODIGO IN (select CODIGO from [BDPERSONAL].[dbo].[ASISTENCIA]
 where MES = @nmes and AÑO = @nanio  group by CODIGO having  COUNT(codigo) > @ndias ) ORDER BY NOMBRE ASC
 
 
 
 
 
 
select distinct * into asistencia_x1 from ASISTENCIA where CODIGO =  '084011' and MES = 7 and AÑO = 2017 order by DIA asc
delete from ASISTENCIA where CODIGO =  '084011' and MES = 7 and AÑO = 2017
insert into ASISTENCIA
select * from asistencia_x1
DROP TABLE asistencia_x1



select  *  from ASISTENCIA where CODIGO =  '084011' and MES = 7 and AÑO = 2017 order by DIA asc

SELECT  CODIGO,CODHORA,HORING,HORSAL FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and SITUACION in ('01', '02', '03', '06', '20', '21', '22', '12', '00') 
89

SELECT  CODIGO,CODHORA,HORING,HORSAL FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' 
and SITUACION in ( select codigo FROM [BDPERSONAL].[dbo].[T_TipoSituacion] where ESTADO = '1')

162


SELECT  CODIGO,CODHORA,HORING,HORSAL FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N'

SELECT  * FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' 


SELECT  * FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' 

SELECT  DNI, CODIGO, NOMBRE, UNIDAD_ORGANICA, CARGO_FUNCIONAL, SITUACION_LABORAL FROM V_MAESTRO where situacion not in ('11', '08') order by NOMBRE asc

select * from V_MAESTRO where NOMBRE like 'chavez%'

select * from V_MAESTRO where SITUACION = '08'

select * from MAESTRO where CODIGO = '084224'
update MAESTRO set situacion = '06' where CODIGO = '084224'

08

select * from MAESTRO where NOMBRE like 'castilla%' 

select * from ASISTENCIA where CODIGO = '084003' and AÑO = 2017
select * from ASISTENCIA where CODIGO = '084114' and AÑO = 2017


select * from MAESTRO where SITUACION = '11'

select * from MAESTRO where SITUACION = '11'

SELECT  CODIGO,CODHORA,HORING,HORSAL, SITUACION FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' order by SITUACION asc

SELECT  CODIGO FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and SITUACION = '11'

select * from ASISTENCIA where CODIGO = '084003' and AÑO = 2017

delete from ASISTENCIA where AÑO = 2017 and CODIGO in (SELECT  CODIGO FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and SITUACION = '11')



