/* VER caso de paciente con  que nse cuelga en la impresion de emergencia */
/* EMERGENCIA ID :  */
declare @lidemergencia varchar(20) = '16040042'
/* select * from EMERGENCIA where EMERGENCIA_ID = @lidemergencia */
 /* select * from V_EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia   ORDER BY FECHA_HORA_REG DESC */
 
 select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia   ORDER BY FECHA_HORA_REG DESC

/* PARA INSERTAR MA SDATOPS */
/***
INSERT INTO [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]
           ([ID_EME_DET_WEB]
           ,[PROFESIONAL]
           ,[FECHA]
           ,[HORA]
           ,[FECHA_HORA_REG]
           ,[EMERGENCIA_ID]
           ,[DETALLE]
           ,[PROCEDIMIENTO]
           ,[ESTADO]
           ,[PACIENTE]
           ,[LUGAR]
           ,[TIPO_PROCESO])
VALUES ((SELECT CONVERT(VARCHAR(10), CONVERT(INT, MAX(ID_EME_DET_WEB)) + 1) AS ID_EME_DET_WEB FROM EMERGENCIA_DET_WEB), 'ZLJ', CONVERT(DATE, '2016-09-22'), CONVERT(TIME(7), '15:00:00' ), GETDATE(), '16040042', 'R XDE TORAX: CARDIOMEGALIA, SE OBSERVA CONGESTION PULMONAR,  DX: iCC    RP.  1.- RESTRICCIÓN DE LÍQUIDOS. VT 600  2.- VIA SALINIZA.  3.- FUROSEMIDA 20 MG 2 AMPOLLAS STAST LUWEGO CADA 8 HORAS.  4.- ESPIRONOLACTORA 25 MG VO CAD 24 HRAS.  5.- CFV bhe.  6.- O2 ´POR CANULA NASA PARA MANTENER SAT O2 MAYOR DE 94%.', '1', '', '2008065781', 'OBS', 'P02') 
*******/

/* select * into EMERGENCIA_DET_WEB2 from EMERGENCIA_DET_WEB */



EXEC SP_GET_EMERGENCIA_15 '16040042'

EXEC SP_GET_EMERGENCIA_DET_WEB_10 '16040042'

/* permite obtener la mayor cantidad de evoluciones por pacientes */
select EMERGENCIA_ID, COUNT(EMERGENCIA_ID) as  contar from EMERGENCIA_DET_WEB where 
EMERGENCIA_ID in (select emergencia_id from emergencia where fecha between convert(datetime, '2016-06-01', 101) and convert(datetime, '2016-09-16', 101) )
group by EMERGENCIA_ID having COUNT(EMERGENCIA_ID) > 50 order by  COUNT(EMERGENCIA_ID) desc

/* 56 registros de evolucion equivalen a 16 paginas en PDF */
/* 95 registros en 22 paginas */

select * from EMERGENCIA where EMERGENCIA_ID = '16029369'