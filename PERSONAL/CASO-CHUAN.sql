use BDPERSONAL

SELECT * from TMPASISTENCIA where CODIGO = '084229'

select * from MAESTRO where NOMBRE like 'quiroz%'

select codigo, dia, horai, horamarco, HORAS, horamarcos, difehora = (case when horamarco > horai then  DATEDIFF(MI, horai, horamarco) else 0 end), falta = (case when horamarco IS null then '1' else '0' end),
    difesalida=(case when horamarcos >= horas then  0 else abs(DATEDIFF(MI, horas, horamarcos)) end), PERMISO = (case when horamarcos IS null then  0 else 0 end),
    falta_salida = case when (DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + mes,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101), convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101))) < 0 then '1' else  0 end
    from  TMPASISTENCIA where CODIGO = '084229'
    
SELECT * from TMPASISTENCIA where CODIGO = '084229'    

SELECT * from TMPASISTENCIA where CODIGO in ('084401')


select horai, horamarco, difehora = (case when horamarco > horai then  DATEDIFF(MI, horai, horamarco) else 0 end) 
  from TMPASISTENCIA where CODIGO = '084229' and between horai and horamarco,
  
 use BDPERSONAL
 declare @lmes varchar(3) = '4'
 declare @lanio varchar(4) = '2016'
 SELECT IDTMPHSTORICO, CODIGO, NOMBRE, DNI, CARGO, TIPO_TRABAJADOR, CODHORA, CODTAR, HABER, HORAS, DNI_RELOG, COSTO_HORA, MINUTOS_DESCONTAR, FALTA, HORAS_TARDE, MINUTOS_TARDE, HORAS_TARDANZA,
         HORAS_SGH, MINUTOS_ANTES_SALIDA, PERMISO, HORAS_SALIDA_DESCONTAR, DESCUENTO, MES, ANIO, CODNIVEL 
          FROM TMPHISTORICOPERSONAL where mes = @lmes and anio = @lanio and minutos_descontar is not null and DESCUENTO <> 0   and CODIGO in ('084401')



select codigo, SUM(MINUTOSFINAL) AS TOTAL_DESCUENTO, SUM(CONVERT(INT, falta)) AS TOTAL_FALTA, sum(permiso) as total_permiso, sum(MINUTOS_SALIDA_DESCONTAR) as total_minutos_salida FROM TMPASISTENCIA GROUP BY CODIGO ORDER BY CODIGO ASC         

select * from ASISTENCIA where CODIGO = '084358' and MES = '3' and AÑO = '2016'



 use BDPERSONAL
 declare @lmes varchar(3) = '4'
 declare @lanio varchar(4) = '2016'
  
  SELECT IDTMPHSTORICO, CODIGO, NOMBRE, DNI, CARGO, TIPO_TRABAJADOR, CODHORA, CODTAR, HABER, HORAS, DNI_RELOG, COSTO_HORA, MINUTOS_DESCONTAR, FALTA, HORAS_TARDE, MINUTOS_TARDE, HORAS_TARDANZA,
		          HORAS_SGH, MINUTOS_ANTES_SALIDA, PERMISO, HORAS_SALIDA_DESCONTAR, DESCUENTO, MES, ANIO, CODNIVEL, (HORAS_SALIDA_DESCONTAR + HORAS_TARDANZA) AS TOTAL_HORAS_TARDE  
		           FROM TMPHISTORICOPERSONAL where mes = @lmes and anio = @lanio and minutos_descontar is not null