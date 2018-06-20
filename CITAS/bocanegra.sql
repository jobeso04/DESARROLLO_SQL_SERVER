use SIGSALUD
select * from ATENCION_SEGURO  order by FECHA_ATENCION desc


 select * from ATENCION_SEGURO where ATENCION_SEGURO_ID = '17063799'

select * from ATENCION_SEGURO where PACIENTE = '2008099997' order by FECHA_ATENCION desc


delete from ATENCION_SEGURO where ATENCION_SEGURO_ID = '17065831'
update ATENCION_SEGURO set numatencion = '2101625252085' where ATENCION_SEGURO_ID = '17063799'



select * from CUENTA where PACIENTE = '2008099997' order by FECHA_APERTURA desc
 select * from ATENCION_SEGURO where PACIENTE = '2008099997' order by FECHA_ATENCION desc
 
  select * from ATENCION_SEGURO where fecha_atencion between '01/10/2017' and '09/10/2017'  order by FECHA_ATENCION desc
  
  select * from ATENCION_SEGURO where ATENCION_SEGURO_ID between '17063790'  and '17063800' order by ATENCION_SEGURO_ID desc
  
  select * from cuenta where paciente = '2008099997' order by FECHA_APERTURA desc

  
  select * from cuentadet where CUENTAID = '1765069' 
  
  update ATENCION_SEGURO set FECHA_ATENCION = convert(datetime, '2017-10-02', 101) where ATENCION_SEGURO_ID = '17063799'
  
  1765069
  
  17063799
  
  update atencion



update CUENTA set nrofua = '2101625252085', prestacion = '056'   where PACIENTE = '2008099997' 


update CUENTA set NROFUA = '2101625250051', PRESTACION = '056', SEGURO =  '01'  where CUENTAID = '1765069'
update CUENTA set NROFUA = '2101625249155', PRESTACION = '056', SEGURO =  '01'  where CUENTAID = '1764155'
update CUENTA set NROFUA = '2101625246929', PRESTACION = '056', SEGURO =  '01'  where CUENTAID = '1761898'
update CUENTA set NROFUA = '2101625240827', PRESTACION = '056', SEGURO =  '01'  where CUENTAID = '1755965'
update CUENTA set NROFUA = '', PRESTACION = ''  where CUENTAID = '1306077'




  update CUENTA set nrofua = '2101625250051' where CUENTAID = '1765069'
  update ATENCION_SEGURO set FECHA_ATENCION = convert(datetime, '2017-10-02', 101) where ATENCION_SEGURO_ID = '17063799'