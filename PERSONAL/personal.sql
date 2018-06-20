UPDATE ASISTENCIA  SET FALTA=0,OBSERVACION='.'  where año = '2015' and mes ='06'
 
 
     If Left(Combo1.Text, 1) = "N" Then xsitua = "'01','03','04'"
    If Left(Combo1.Text, 1) = "C" Then xsitua = "'06'"
    If Left(Combo1.Text, 1) = "T" Then xsitua = "'20'"
    
 
 SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('01','03','04')
   AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G'  order by nombre,dia
   
SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('01','03','04')
    AND SUBSTRING (CODACT,1,1)<>'G' and nombre = 'BALTUANO VILLAFUERTE NORA LIZ' order by nombre,dia
      
   select * from v_ASISTENCIA  where año = '2015' and mes = '6' and DNI = '06649520'
 
 SELECT * FROM T_tipoSITUACION
 
  SELECT * from V_ASISTENCIA order by situacion asc
    select min(hora) as hrta from RELOGDIGI,MAESTRO where relogdigi.Codigo = maestro.DNI and MAESTRO.DNI = '06649520' and FECHA between '01-06-2015' and '30-06-2015'
    
    
    select min(hora) as hrta from RELOGDIGI,MAESTRO where relogdigi.Codigo = maestro.DNI and MAESTRO.DNI = '06649520' and FECHA = '01-06-2015'
    
        select  min(hora) as hrta from RELOGDIGI,MAESTRO where relogdigi.Codigo = maestro.DNI and MAESTRO.DNI = '06649520' and FECHA = '02-06-2015'
        
        SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('01','03','04')
   AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G' and dni = '06649520' order by nombre,dia
 
 
 Select  MIN(HORA) from RELOGDIGI, V_ASISTENCIA where relogdigi.Codigo='06649520' and relogdigi.Fecha = '02-06-2015' 
  and relogdigi.Hora < (SELECT v_asistencia.HORAI from V_ASISTENCIA where año = '2015' and mes = '6' and dia = '2' AND COD_SITUA IN ('01','03','04')
   AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G' and dni = '06649520') 
   
   
   select * from v_ASISTENCIA  where año = '2015' and mes = '6' and DNI = '06649520'
   
   
 SELECT * from V_ASISTENCIA where año = '2015' and mes = '6' AND COD_SITUA IN ('01','03','04')
   AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G'  order by nombre,dia   