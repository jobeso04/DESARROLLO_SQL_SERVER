declare @lnombre varchar(100) = 'PAICO'
declare @lcodigo varchar(50) = '084060'
declare @lanio  varchar(50) = '2013'
declare @lmes varchar(10) = '11'
declare @horario varchar(10) = 'M4' 

/* SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%' + @lnombre + '%' */
/* SELECT * FROM ASISTENCIA WHERE AÑO = @lanio AND MES = @lmes  AND CODIGO =  @lcodigo  */
/* SELECT * FROM ASISTENCIA WHERE AÑO = @lanio AND MES = @lmes  AND CODACT = @horario */
/*SELECT * FROM ASISTENCIA WHERE AÑO = @lanio  AND CODACT = @horario */
SELECT NOMBRE FROM MAESTRO  WHERE CODIGO in (select codigo  FROM ASISTENCIA where  AÑO = @lanio  AND CODACT = @horario)
/* SELECT * FROM ASISTENCIA WHERE AÑO = @lanio  AND CODACT LIKE '%' +  @horario + '%' */

/* SELECT * FROM V_ASISTENCIA WHERE AÑO = @lanio AND MES = @lmes  AND CODIGO =  @lcodigo*/
