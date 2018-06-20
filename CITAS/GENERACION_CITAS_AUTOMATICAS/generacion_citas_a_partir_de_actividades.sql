/*
TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_DIAS_TURNO]
	declare @lcconsultorio varchar(6) = '1095' 
	declare @lcmedico varchar(3) = 'CAK'
	declare @lnmes int = 12
	declare @lnanio int = 2017
	declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + convert(varchar(2), @lnmes) 
	declare @lc_servicio varchar(2) = '10'
	declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
	declare @ln_actividad int = 4
	
	INSERT INTO [SIGSALUD].[dbo].[TMP_DIAS_TURNO]([DIA],[FECHA],[TURNO],[HORAS])
	select ('DIA' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2) ) AS DIA, CONVERT(DATETIME, (CONVERT(VARCHAR(4), ANIO)  + '-' + CONVERT(VARCHAR(2), MES) + '-' + CONVERT(VARCHAR(2), DIA)), 101) AS FECHA, TURNO, HORAS  
	from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = @lc_codigo and ANIO =  @lnanio and MES = @lnmes and ID_ACTIVIDAD = @ln_actividad
	order by CONVERT(int, dia)
	
select * from [SIGSALUD].[dbo].[TMP_DIAS_TURNO]

*/


/*
select id_actividad, codigo, DIA, MES, ANIO, ESTADO, 

turno, case when LEN(turno) = 1 then '1'
     
     else  '2' end  turno_final,

 HORAS from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
	
	
	
select id_actividad, codigo, DIA, MES, ANIO, ESTADO, 

turno, if LEN(turno) = 1 then '1'
     
     else  '2'  as final,

 HORAS from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
		*/
		
		
select id_actividad, codigo, DIA, MES, ANIO, ESTADO, TURNO,  HORAS 
 from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where ID_ACTIVIDAD = 4