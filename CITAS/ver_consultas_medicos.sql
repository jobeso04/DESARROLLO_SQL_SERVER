/* para revisar lo ingresado en consultorio */

/* primero nara revisar */
-- TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_DIAS_TURNO]
declare @lcconsultorio varchar(6) = '1095' 
declare @lcmedico varchar(3) = 'CAK'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
declare @lc_servicio varchar(2) = '10'
declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
declare @ln_actividad int = 4
-- INSERT INTO [SIGSALUD].[dbo].[TMP_DIAS_TURNO]([DIA],[FECHA],[TURNO],[HORAS])
select ('DIA' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2) ) AS DIA, CONVERT(DATETIME, (CONVERT(VARCHAR(4), ANIO)  + '-' + CONVERT(VARCHAR(2), MES) + '-' + CONVERT(VARCHAR(2), DIA)), 101) AS FECHA, TURNO, HORAS  
from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = @lc_codigo and ANIO =  @lnanio and MES = @lnmes and ID_ACTIVIDAD = @ln_actividad
order by CONVERT(int, dia)



select TURNO, case when LEN(turno) = 2 then '2'  else '1' end as final from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 

/* para 2 */
select TURNO, case when LEN(turno) > 1 then 
 (case when SUBSTRING(turno, 1,1) = 'M' then SUBSTRING(turno, 1,1) else '' end as Turno_M,
 case when SUBSTRING(turno, 2,1) = 'T' then SUBSTRING(turno, 2,1) else '' end as Turno_T)
 
  else '1' end as final,

 
 case when SUBSTRING(turno, 1,1) = 'T' then SUBSTRING(turno, 2,1) else '' end as Turno_T
 
  from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 



/*****************************/

/* para 2 */
select TURNO, case when LEN(turno) = 2 then '2' else '1' end as final,
 case when SUBSTRING(turno, 1,1) = 'M' then SUBSTRING(turno, 1,1) 
      when SUBSTRING(turno, 1,1) = 'T' then SUBSTRING(turno, 1,1) 
 
 
 else '' end TURNO_M, case when SUBSTRING(turno, 2,1) = 'T' then SUBSTRING(turno, 2,1) else '' end TURNO_T
  from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 






SELECT RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2)

select * from [SIGSALUD].[dbo].[ROLACTIVIDAD] where PERIODO = '201712' and CONSULTORIO = '1095'
INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD]([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],[D09],[D10],[D11],[D12],
      [D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
values ('201712', '10', '1095', 'M', '','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','') 
INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD]([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],[D09],[D10],[D11],[D12],
      [D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
values ('201712', '10', '1095', 'T', '','','','CAK','','CAK','','','','','CAK','','CAK','','','','','CAK','','CAK','','','','','','','CAK','','','','') 


DIA04
DIA06
DIA11
DIA13
DIA18
DIA20
DIA27

     
     VALUES
           (<PERIODO, char(6),>
           ,<SERVICIO, char(6),>
           ,<CONSULTORIO, char(6),>
           ,<TURNO_CONSULTA, char(2),>
           ,<D01, char(11),>
           ,<D02, char(11),>
           ,<D03, char(11),>
           ,<D04, char(11),>
           ,<D05, char(11),>
           ,<D06, char(11),>
           ,<D07, char(11),>
           ,<D08, char(11),>
           ,<D09, char(11),>
           ,<D10, char(11),>
           ,<D11, char(11),>
           ,<D12, char(11),>
           ,<D13, char(11),>
           ,<D14, char(11),>
           ,<D15, char(11),>
           ,<D16, char(11),>
           ,<D17, char(11),>
           ,<D18, char(11),>
           ,<D19, char(11),>
           ,<D20, char(11),>
           ,<D21, char(11),>
           ,<D22, char(11),>
           ,<D23, char(11),>
           ,<D24, char(11),>
           ,<D25, char(11),>
           ,<D26, char(11),>
           ,<D27, char(11),>
           ,<D28, char(11),>
           ,<D29, char(11),>
           ,<D30, char(11),>
           ,<D31, char(11),>)
GO



/*
declare @lcconsultorio varchar(6) = '1095' 
declare @lcmedico varchar(3) = 'CAK'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
declare @lc_servicio varchar(2) = '10'
declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
declare @ln_actividad int = 4
select FECHA, TURNO_CONSULTA, count(TURNO_CONSULTA) as citas from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lcconsultorio
   and MEDICO = @lcmedico and month(FECHA) = @lnmes and YEAR(fecha) = @lnanio
   group by FECHA, TURNO_CONSULTA order by FECHA 
select * from [SIGSALUD].[dbo].[ROLACTIVIDAD] where PERIODO = @lcperiodo and servicio = @lc_servicio  and CONSULTORIO =  @lcconsultorio

declare @lcconsultorio varchar(6) = '1095' 
declare @lcmedico varchar(3) = 'CAK'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
declare @lc_servicio varchar(2) = '10'
declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
declare @ln_actividad int = 4
delete from [SIGSALUD].[dbo].[ROLACTIVIDAD] where PERIODO = @lcperiodo and servicio = @lc_servicio  and CONSULTORIO =  @lcconsultorio
delete from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lcconsultorio and MEDICO = @lcmedico and month(FECHA) = @lnmes and YEAR(fecha) = @lnanio

declare @lcconsultorio varchar(6) = '1095' 
declare @lcmedico varchar(3) = 'CAK'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
declare @lc_servicio varchar(2) = '10'
declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
declare @ln_actividad int = 4
select * from [SIGSALUD].[dbo].[ROLACTIVIDAD] where PERIODO = @lcperiodo and servicio = @lc_servicio  and CONSULTORIO =  @lcconsultorio
select * from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lcconsultorio and MEDICO = @lcmedico and month(FECHA) = @lnmes and YEAR(fecha) = @lnanio




*/








/* esta seccion ya esta cerrado */
/* select * from [SIGSALUD].[dbo].[ROLACTIVIDADC] where PERIODO = @lcperiodo and servicio = @lc_servicio */
   
   
   

 
 /* ELIMINAR A MARTINEZ */
 
declare @lcconsultorio varchar(6) = '1030' 
declare @lcmedico varchar(3) = 'CAK'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
declare @lc_servicio varchar(2) = '10'
declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
declare @ln_actividad int = 4
delete from [SIGSALUD].[dbo].[ROLACTIVIDAD] where PERIODO = @lcperiodo and servicio = @lc_servicio  and CONSULTORIO =  @lcconsultorio
delete from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lcconsultorio and MEDICO = @lcmedico and month(FECHA) = @lnmes and YEAR(fecha) = @lnanio


 /********************************************************************************************************/