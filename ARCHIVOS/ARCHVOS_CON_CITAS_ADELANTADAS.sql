use SIGSALUD
DECLARE @lcfecha varchar(10) = '2016-12-07'
declare @lcuser varchar(20) = 'GLUCAS'
declare @lcturno varchar(20) = 'M'
select CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, HISTORIA, NOMBRE, NOMBRE_CONSULTORIO, TURNO_CONSULTA, HORA, NOMBRE_MEDICO, NOMBRE_SEGURO, UPPER(NOMBRE_ESPECIALIDAD) AS
ESPECIALIDAD  from V_CITA where fecha = convert(datetime, @lcfecha, 101)  and ESTADO in ('2', '3') AND CONSULTORIO IN (SELECT CONSULTORIO FROM dbo.ARCHIVO_PARAMETRO WHERE USUARIO = @lcuser)
and TURNO_CONSULTA = @lcturno order by HISTORIA asc


 USE BDPERSONAL
 select * from ASISTENCIA where DIA = 6 and MES = 12 and AÑO = 2016 and CODIGO = '084063'
 SELECT * FROM V_ASISTENCIA WHERE DIA = 7 AND MES = 12 AND AÑO = 2016 and idservdepartunid = '12'  ORDER BY DES_UND ASC
 
 
 DECLARE @lndia INT = 9
 DECLARE @lnmes INT = 12
 declare @lnanio int = 2016
 declare @lcservicio varchar(5) = '12'
 declare @lcnombre varchar(200) = 'sOTO'
 declare @lccodigo varchar(13)  = '084357'
 select * from [BDPERSONAL].[dbo].[MAESTRO] where NOMBRE like '%' + @lcnombre + '%%' ORDER BY NOMBRE ASC
 
 /* DADO EL NOMNRE, SELECCIONAR LA FECHA */
 select CODIGO, DNI, NOMBRE, DES_SITUA, DES_UND, CODACT, HORAI, HORAS, FUNCION, DIA, MES, AÑO, FUNCION, idservdepartunid 
  from  [BDPERSONAL].[dbo].[V_ASISTENCIA] where CODIGO = @lccodigo AND MES = @lnmes AND AÑO = @lnanio  order by DIA asc 
  
 /* DADO L FECHA, BUSCA QUIENES SON PIDIENDO FECHA Y UNIDAD ORGANIZACIONAL 
 select CODIGO, DNI, NOMBRE, DES_SITUA, DES_UND, CODACT, HORAI, HORAS, FUNCION
   from [BDPERSONAL].[dbo].[V_ASISTENCIA] where DIA = @lndia and MES = @lnmes  AND AÑO = @lnanio and idservdepartunid = @lcservicio   order by nombre asc */
 
  
 