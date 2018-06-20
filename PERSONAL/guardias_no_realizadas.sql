 
  
 select nombre, dni, relogdigi.Fecha from MAESTRO, RELOGDIGI 
    where maestro.DNI = RELOGDIGI.Codigo and RELOGDIGI.Fecha BETWEEN  '20150401' and '20150430' 
      order by NOMBRE, RELOGDIGI.Fecha asc
      
      
svelect * from GUARDIA_EFE       

select nombre, plaza, relogdigi.Fecha from guardia_efe, RELOGDIGI 
    where guardia_efe.plaza <> RELOGDIGI.Codigo and RELOGDIGI.Fecha BETWEEN  '20150401' and '20150430' 
      order by guardia_efe.NOMBRE, RELOGDIGI.Fecha asc
 
 select nombre, plaza from GUARDIA_EFE   
 

select * select codigo, fecha from RELOGDIGI where RELOGDIGI.Fecha BETWEEN  '20150401' and '20150430'  and Codigo in (select plaza from GUARDIA_EFE  where mes = 'ABRIL' and Año = '2015')