
  USE BDPERSONAL
  DECLARE @lcdni VARCHAR(8) = '21492907'
  select STUFF((select ', ' + (convert(varchar(2), DIA) + '/' + convert(varchar(2), MES) + '/' + convert(varchar(4), A�O) + ' - ' + CONVERT(VARCHAR(5), HORAI) + ' - ' + 
                   CONVERT(VARCHAR(5), HORAS)) FROM ASISTENCIA WHERE CODIGO = (SELECT CODIGO FROM MAESTRO WHERE DNI = @lcdni) AND MES = 3 AND A�O = 2017 AND DIA >= 1 AND CODACT <> 'D'
                    for  XML path ('')), 1,1, '') AS HORARIO