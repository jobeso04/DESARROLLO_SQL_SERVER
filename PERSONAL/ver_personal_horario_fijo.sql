/* REVISAR HORARIO DE PERSONAL CON HORARIO FIJO PARA EL MES DE ENERO 2016 */

USE BDPERSONAL

DECLARE @lcodigo varchar(10) = '084418' /* codigo del perosnal que no tiene horario */
DECLARE @lcodigo2 varchar(10) = '084253' /* codigo del personal que si tiene horario */
DECLARE @lanio varchar(4) = '2016'
DECLARE @lmes varchar(2) = '1'

/* castillo salguedo -- 084418  */
/* martinez fernandez 084507 */
/* ramirez roldan - 084347 */
/* Jara Bellido Alexandra - 084429 */

/* SI ESTA BIEN *****/

/*  MARCELO LOPEZ SERGIO STEVE - 084253  */
/*************************/

SELECT * FROM MAESTRO WHERE CODIGO = @lcodigo
SELECT  CODIGO,NOMBRE, CODHORA,HORING,HORSAL FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and CODIGO = @lcodigo
SELECT CODIGO FROM ASISTENCIA WHERE Año=@lanio and mes = @lmes  AND CODIGO=@lcodigo AND TIPO='V' GROUP BY CODIGO
Select * from Vacaciones  where Desde <= convert(datetime, '2016-01-01', 101)  and Hasta >= convert(datetime, '2016-01-01', 101) and CODIGO = @lcodigo
Select * from T_FERIADOS where diafer = convert(datetime, '2016-01-01', 101)
Select * from LICENCIA where Desde <= convert(datetime, '2016-01-01', 101) and Hasta >= convert(datetime, '2016-01-01', 101) AND CODIGO = @lcodigo
SELECT Lunes from T_Horarios where codhor like '%'+ (SELECT  CODHORA FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and CODIGO = @lcodigo) + '%'
SELECT * from T_Horarios where codhor like (SELECT  CODHORA FROM V_MAESTRO WHERE CODHORA <> 'R' AND CODHORA <> 'N' and CODIGO = @lcodigo) + '%' and TIPO <> 'R' 

DECLARE @ldia varchar(20) = 'Lunes'
SELECT @ldia as dia from T_Horarios where codhor like 'M1' + '%' and TIPO <> 'R' and TIPO_HORA = 'V'
SELECT * from T_Horarios where codhor like 'M1' + '%' and TIPO <> 'R' and TIPO_HORA = 'V'

SELECT * from T_Horarios where CODHOR like 'M4' + '%'
SELECT * from T_Horarios where CODHOR like '%' + 'M1' + '%'

select * from ASISTENCIA where CODIGO = '084253' and MES = 1 and AÑO = 2016

   SELECT Lunes, Martes, Miércoles, Jueves, Viernes, Sábado, Domingo from T_Horarios where CODHOR like ?lcodhora + '%'

