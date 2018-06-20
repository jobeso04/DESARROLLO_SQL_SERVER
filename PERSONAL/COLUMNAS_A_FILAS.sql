
  USE BDPERSONAL
  DECLARE @lcdni VARCHAR(8) = '21492907'
  select STUFF((select ', ' + (convert(varchar(2), DIA) + '/' + convert(varchar(2), MES) + '/' + convert(varchar(4), AÑO) + ' - ' + CONVERT(VARCHAR(5), HORAI) + ' - ' + 
                   CONVERT(VARCHAR(5), HORAS)) FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = 3 AND AÑO = 2017 AND DIA >= 1 AND CODACT <> 'D'
                    for  XML path ('')), 1,1, '') AS HORARIO