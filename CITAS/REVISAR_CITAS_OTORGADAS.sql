use sigsalud
declare @lcfecha varchar(10) = '2017-02-15'
declare @lcmedico varchar(3) = 'CMP'
declare @lcdni varchar(9) = (select dni from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico)
declare @lcperiodo varchar(10) = '022017'

select RIGHT('00' + CONVERT(VARCHAR(2), DIA),2) + '/' + RIGHT('00' + CONVERT(VARCHAR(2), MES),2) + '/' + ANIO  AS FECHA, PROF_CITA  AS MEDICO, 
CASE WHEN MT = 'M' THEN 'MAÑANA' ELSE 'TARDE' END as TURNO, FICHAFAM as HISTORIA, PACIENTE, CONVERT(VARCHAR(5), HORA_ATENCION) HORA_ATENCION  from [SIGSALUD].[dbo].[HIS] 
where PERIODO = '022017' and DIA in (15) and CODHIS like '%' + @lcdni + '%' and FINANCIA = '2' order by DIA, MT, PACIENTE  asc



/*
select * from [SIGSALUD].[dbo].[CITA] where FECHA = CONVERT(datetime, @lcfecha,101) and MEDICO = @lcmedico  and ESTADO in ('3', '4') and SEGURO = '01'
*/



 SELECT fecha_programacion, CITA_ID, estado, nombre, NOMBRE_SEGURO, NOMBRE_TIPO_CITA, TURNO_CONSULTA , HORA, NUMERO, CASE WHEN USUARIO IS NULL THEN '' ELSE USUARIO END AS USUARIO, HISTORIA
       FROM [SIGSALUD].[dbo].[V_CITA] WHERE CONSULTORIO = '1027' AND MONTH(FECHA) = 2 AND YEAR(FECHA) = 2017 and DAY(fecha) = 15 and turno_consulta = 'T'
       and medico = 'CMP' order by turno_consulta, NUMERO asc
       
       