SELECT IDSEPIDEMI, CANIO, CNROSEMANA, DFECHAINICIO, DFECHAFIN, CUSUARIO, 
 DFECHAREGISTRO, 'SEMANA ' + CNROSEMANA + ' - ' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), DAY(DFECHAINICIO), 20)),2)  + '/' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), MONTH(DFECHAINICIO), 20)),2)   
  + ' - ' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), DAY(DFECHAFIN), 20)),2)  + '/' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), MONTH(DFECHAFIN), 20)),2)   + '/' + CONVERT(CHAR(4), YEAR(DFECHAFIN), 101) AS SEMA
     FROM SEPIDEMI
  
  
  
  