/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [SIGSALUD].[dbo].[SEEM-V-EMERGENCIA]  order by historia 
  
  
select 3782 - 3773

SELECT *
  FROM [SIGSALUD].[dbo].[SEEM-V-EMERGENCIA]

-- 3772

debe estar en : 3773

SELECT *
  FROM [SIGSALUD].[dbo].[SEEM-V-EMERGENCIA] order by fecha 
  
  
  
SELECT *
  FROM [SIGSALUD].[dbo].[SEEM-V-EMERGENCIA] where historia like   '%83835'

select * from [SIGSALUD].[dbo].[SEEM_EMERGENCIA_PROCESADO] where numhc like  '%83835'

select *   from [SIGSALUD].[dbo].[v_emergencia] where month(convert(date, fecha_sal)) = 2 and year(convert(date, fecha_sal)) = 2018 
 and CIEX1 <> '0' and HISTORIA like '%83835' and month(FECHA) = 2 and YEAR(fecha) = 2018 

select *   from [SIGSALUD].[dbo].[v_emergencia] where month(convert(date, fecha_sal)) = 2 and year(convert(date, fecha_sal)) = 2018 
 and CIEX1 <> '0' and HISTORIA like '%83835' 


select *   from [SIGSALUD].[dbo].[v_emergencia] where month(convert(date, fecha_sal)) = 2 and year(convert(date, fecha_sal)) = 2018 
 and CIEX1 <> '0' and HISTORIA like '%83835' 


select *   from [SIGSALUD].[dbo].[emergencia] where  paciente = '2008083446' order by fecha desc

select *   from [SIGSALUD].[dbo].[emergencia] where  EMERGENCIA_ID in ('18007529', '18007213')
select *   from [SIGSALUD].[dbo].[v_emergencia] where  EMERGENCIA_ID in ('18007529', '18007213')

select *   from [SIGSALUD].[dbo].[v_emergencia] where  EMERGENCIA_ID in ('18007213')

18007213

17055997



83835


INSERT INTO [SIGSALUD].[dbo].[SEEM-V-EMERGENCIA]
           ([ESTADO]
           ,[EMERGENCIA_ID]
           ,[FECHA]
           ,[HORA]
           ,[ORDEN]
           ,[PACIENTE]
           ,[HISTORIA]
           ,[NOMBRES]
           ,[FECHA_NACIMIENTO]
           ,[SEXO]
           ,[NOMBRE_SEGURO]
           ,[NOMBRE_DIAGNOSTICO]
           ,[CONSULTORIO]
           ,[NOMBRE_CONSULTORIO]
           ,[CUENTAID]
           ,[MOTIVO_EMERGENCIA]
           ,[USUARIO]
           ,[NOMBRE_MOTIVO]
           ,[MEDICO]
           ,[NOMBRE_MEDICO]
           ,[DIRECCION]
           ,[ESTADO_CIVIL]
           ,[NOMBRE_ESTADOCIVIL]
           ,[DISTRITO]
           ,[DOCUMENTO]
           ,[DOCUMENTOA]
           ,[TELEFONO1]
           ,[TELEFONO2]
           ,[ACOMPANANTE]
           ,[PATERNO]
           ,[MATERNO]
           ,[NOMBRE_PACIENTE]
           ,[EDAD]
           ,[NOMBRE]
           ,[NOMBRE_SEXO]
           ,[SEGURO]
           ,[PRE_AFILIACION]
           ,[OBSERVACION1]
           ,[OBSERVACION2]
           ,[LOCALIDAD]
           ,[Nombre_Localidad]
           ,[CONSULTORIO1]
           ,[CIEX4]
           ,[MEDICO1]
           ,[ENTIDAD]
           ,[HORA_ATEN]
           ,[ESTABLECIMIENTO]
           ,[CONDICION_EGRESO]
           ,[FECHA_ING]
           ,[FECHA_SAL]
           ,[NUMCAMA]
           ,[HORA_ING]
           ,[HORA_SAL]
           ,[HORA_EST]
           ,[DESTINO]
           ,[CIEX3]
           ,[CIEX2]
           ,[CIEX1]
           ,[ESTANCIA]
           ,[DESEGRESO]
           ,[TIPOATENCION]
           ,[PRIORIDAD]
           ,[MEDICO2]
           ,[CIEX5]
           ,[FECHA_ING1]
           ,[FECHA_SAL1]
           ,[NUMCAMA1]
           ,[HORA_ING1]
           ,[HORA_SAL1]
           ,[HORA_EST1]
           ,[CIEX6]
           ,[CIEX7]
           ,[CIEX8]
           ,[CIEX9]
           ,[RELIGION]
           ,[DESRELIGION]
           ,[QUIEN_ATIENDE]
           ,[SEGUROLIQ])
select *   from [SIGSALUD].[dbo].[v_emergencia] where  EMERGENCIA_ID in ('18007213')