
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2017-04-01', 101) and CONVERT(datetime, '2017-06-30', 101) 
AND DX1 = 'k35.9'  order by FECHA1 asc



select  top 3 HISTORIA, NOMBRES from V_HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2017-06-01', 101) and CONVERT(datetime, '2017-06-30', 101) 
AND DX1 = 'K81.1' and SEXO = 'M' 
union all 
select  top 3 HISTORIA, NOMBRES from V_HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2017-06-01', 101) and CONVERT(datetime, '2017-06-30', 101) 
AND DX1 = 'K81.1' and SEXO = 'F' 

 
 select * from CIEXhis where codigo = 'K359'
 select * from CIEXhis where codigo = 'K811'
 
