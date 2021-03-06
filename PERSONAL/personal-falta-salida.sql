/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 5000 [IDTMP]
      ,[CODIGO]
      ,[CODACT]
      ,[DIA]
      ,[MES]
      ,[ANIO]
      ,[TIPO]
      ,[HORAI]
      ,[HORAMARCO]
      ,[DIFEHORA]
      ,[HORAS]
      ,[HORAMARCOS]
      ,[DIFESALIDA]
      ,[FALTA]
      ,[TARDANZA]
      ,[PERMISO]
      ,[DNI_RELOG]
      ,[MINUTOSFINAL]
      ,[MINUTOS_SALIDA_DESCONTAR]
  FROM [BDPERSONAL].[dbo].[TMPASISTENCIA] 
  
  
   update TMPASISTENCIA set difehora = (case when horamarco > horai then  DATEDIFF(MI, horai, horamarco) else 0 end), falta = (case when horamarco IS null then '1' else '0' end),
    difesalida=(case when horamarcos >= horas then  0 else abs(DATEDIFF(MI, horas, horamarcos)) end), PERMISO = (case when horamarcos IS null then  0 else 0 end),
    falta_salida = case when (DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101), convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101))) < 0 then '1' else  0 end
   
   select * from TMPASISTENCIA
        
        
select convert(time(0), '23:59:60') as t1
    
    CASE when horamarcos between horas and convert(time(0), '23:59:00') then '0'  else case when horamarcos > convert(time(0), '23:59:00') then  '1' else '0' end END
    
    
    case when horamarcos between horas and convert(time(0), 23:59:00) then '0'  else  when case horamarcos < convert(time(0), 24:00:00)
    
    
    select * from TMpPersonal where dni_relog = '25431049'
    select * from TMPASISTENCIA where dni_relog = '25431049'
    select * from RELOGDIGI where Codigo = '25431049' and Fecha between '01-06-2015' and '30-06-2015' order by Fecha asc
    
    
    Category =
      CASE horamarcos
         WHEN horamarcos between horas and convert(time(0), 23:59:00) then '0' 
         WHEN horamarcos > convert(time(0), 23:59:00) THEN '1'
         ELSE '0'
      END,
   Name
   
   SELECT CONVERT(time(0),'23:59:59',108) 
   
   
   
declare @horaActual as time
declare @fecha2 as time

set @horaActual = GETDATE()
set @fecha2 = '09:00:00'

select @horaActual as horaActual , @fecha2 as fecha2, DATEDIFF( MI , @fecha2 , @horaActual )  as diferencia

select convert(anio 


horas
horamarcos

select dia, mes, anio, horas, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101) as salida, 
            convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101) as salidamarco, horamarcos,  DATEDIFF(mi, horas, horamarcos) as dife from TMPASISTENCIA




select dia, mes, anio, horas, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101) as salida, 
            convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101) as salidamarco, 
             DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101), convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101)) as dife from TMPASISTENCIA



             
             DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101), 
                         convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101)) as dife from TMPASISTENCIA


select convert(datetime,'1900-01-01 00:00:00',101)



select GETDATE()

select right('000000' + '25',5) 



select convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101) as salida, 
            convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101) as salidamarco, 
       falta = case when (DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101), convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101))) < 0 then '1' else  0 end from TMPASISTENCIA



select convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101) as salida, 
            convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101) as salidamarco, 
       (DATEDIFF(MI, convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horas)),101), convert(datetime, (anio + '-' + right('0' + MES,2) + '-' + right('0' + dia,2)+ ' ' + CONVERT(varchar, horamarcos)),101)))  as dife from TMPASISTENCIA
       


select * from TMPASISTENCIA