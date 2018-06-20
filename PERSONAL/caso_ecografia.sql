use BDPERSONAL
select * from actividades where ID_ACTIVIDAD in (4)

select * from actividades where nombre like 'eco%'


select * from actividad_detalle where codigo = '084030'  and mes = 3 and anio = 2017 order by DIA asc

update actividad_detalle set id_actividad = '49', HORAS = 2 where id_actividad_det = 39195

select * from maestro 


use BDPERSONAL
select * from actividades where NOMBRE LIKE  '%CONSUL%'

update actividades set ABREVIATURA = 'EMEG' where NOMBRE = 'EMERGENCIA' 
update actividades set ABREVIATURA = 'CEM' where NOMBRE = 'CONSULTORIO'
update actividades set ABREVIATURA = 'PRO', NOMBRE = 'PROCED. DIAGN Y TERAPE'  where ABREVIATURA = 'PROC'
update actividades set ABREVIATURA = 'VMH', NOMBRE = 'VIS. MED. HOSPITALARIA'  where ABREVIATURA = 'HOS'
update actividades set ABREVIATURA = 'INT', NOMBRE = 'INTERCONSULTA'  where ABREVIATURA = 'INC'
update actividades set ABREVIATURA = 'JUN'  where ABREVIATURA = 'JMED'
update actividades set ABREVIATURA = 'TEM'  where ABREVIATURA = 'TLM'
update actividades set ABREVIATURA = 'RYC'  where ABREVIATURA = 'REFC'




INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('TELEGESTION', 'TEG', '1', 'TELEGESTION', 'TELEGESTION')
INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('TELEGESTION', 'TEG', '2', 'TELEGESTION', 'TELEGESTION')
INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('INFORMACION, EDUC. Y COMU', 'IEC', '1', 'INFORMACION, EDUCACION Y COMU', 'INFORMACION, EDUCACION Y COMU')
INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('INFORMACION, EDUC. Y COMU', 'IEC', '2', 'INFORMACION, EDUCACION Y COMU', 'INFORMACION, EDUCACION Y COMU')


INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('INVESTIGACION', 'INV', '1', 'INVESTIGACION', 'INVESTIGACION')
INSERT INTO [BDPERSONAL].[dbo].[ACTIVIDADES]([NOMBRE],[ABREVIATURA],[ACTIVO],[TITULO],[SUBTITULO])
     VALUES ('INVESTIGACION', 'INV', '2', 'INVESTIGACION', 'INVESTIGACION')




     
           ,<ABREVIATURA, varchar(5),>
           ,<ACTIVO, char(1),>
           ,<TITULO, varchar(500),>
           ,<SUBTITULO, varchar(500),>)
GO





update actividades set ABREVIATURA = 'RYC'  where ABREVIATURA = 'REFC'














