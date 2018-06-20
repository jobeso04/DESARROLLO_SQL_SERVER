use sigsalud
declare @lfechainicial varchar(10) = '2017-07-01'
declare @lfechafinal varchar(10) = '2017-07-31'
declare @gruporecauda varchar(10) = '04'

Select 'SIS' CONDICION,  NOMBRE, COUNT(ITEM) AS NRO_VECES, PRECIO from V_CUENTADET WHERE ITEM IN (SELECT ITEM FROM ITEM WHERE GRUPO_RECAUDACION = '04' AND SUBSTRING(ITEM, 1,1) IN ('6') AND ACTIVO IN ('7')) AND CUENTAID IN (Select CUENTAID 
from CUENTA WHERE FECHA_APERTURA between convert(datetime, @lfechainicial, 101) and convert(datetime,@lfechafinal,101) AND SEGURO = '01' AND ESTADO = '2') 
GROUP BY NOMBRE, PRECIO ORDER BY COUNT(NOMBRE) DESC

Select 'SOAT' CONDICION, NOMBRE, COUNT(ITEM) AS NRO_VECES, PRECIO from V_CUENTADET WHERE ITEM IN (SELECT ITEM FROM ITEM WHERE GRUPO_RECAUDACION = '04' AND SUBSTRING(ITEM, 1,1) IN ('6') AND ACTIVO = '7') AND CUENTAID IN (Select CUENTAID 
from CUENTA WHERE FECHA_APERTURA between convert(datetime, @lfechainicial, 101) and convert(datetime,@lfechafinal,101) AND SEGURO = '02' AND ESTADO = '2') 
GROUP BY NOMBRE, PRECIO ORDER BY COUNT(ITEM) DESC

select 'PAGANTE' CONDICION, NOMBRE, count(nombre) as Nro_de_veces, precio from v_PAGOD where PAGOID in (SELECT distinct PAGOID from V_Boleta_Grupo 
       WHERE   ESTADO = '2' AND Fecha between convert(datetime, @lfechainicial, 101) and convert(datetime,@lfechafinal,101)
      and Grupo_recaudacion = '04') AND ITEM <> '179999' AND SUBSTRING(ITEM, 1,1) IN ('6')    group by NOMBRE, PRECIO order by count(nombre)  desc
      
      
      