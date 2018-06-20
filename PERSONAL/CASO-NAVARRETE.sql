use BDPERSONAL
declare @lcnombre varchar(200) = 'ychpas limaco'
declare @lcfecha1 datetime = convert(datetime, '2015-12-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2015-12-15', 101)
select CODIGO, PLAZA, T_PLAZA, NOMBRE, SITUACION, DNI, DNI_RELOG, DNI_ACTUAL, CADENA, XFLAT from MAESTRO where NOMBRE like @lcnombre + '%'
SELECT CODIGO, NOMBRE  FROM T_TipoSituacion WHERE CODIGO IN (select SITUACION from MAESTRO where NOMBRE like @lcnombre + '%')
SELECT * FROM RELOGDIGI WHERE FECHA between @lcfecha1 and @lcfecha2 AND Codigo = (select DNI_RELOG from MAESTRO where NOMBRE like @lcnombre + '%')
SELECT * FROM asistencia WHERE año = 2015 and mes = 12  AND Codigo = (select DNI_RELOG from MAESTRO where NOMBRE like @lcnombre + '%')
