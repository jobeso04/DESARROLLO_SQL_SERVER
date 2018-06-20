/* semana 31 */

select * from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-08',101) and substring(edad,5,2) between '00' and '11'  
and DISTRITO = '150118' and CIEX1 IN ('R50', 'R50.9')


select * from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-08',101) and 
FECHA_NACIMIENTO BETWEEN  CONVERT(datetime, '2014-08-01',101) and  CONVERT(datetime, '2015-07-31',101)
and DISTRITO = '150118' and CIEX1 IN ('R50', 'R50.9') AND CIEX2 IN ('R50', 'R50.9') AND CIEX3 IN ('R50', 'R50.9')


select * from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-08',101) and 
FECHA_NACIMIENTO BETWEEN  CONVERT(datetime, '2014-08-01',101) and  CONVERT(datetime, '2015-07-31',101)
and DISTRITO = '150118' and CIEX1 IN ('R50', 'R50.9') and CIEX4 IN ('R50', 'R50.9') 



