  use SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2016-03-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2016-03-31', 101)
  
 /* update EMERGENCIA set EDAD = '000a00m00d' where FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)  and EDAD = '00a00m00d'
 
    select fecha, edad from EMERGENCIA  where FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)  and EDAD = '00a00m00d'
     update EMERGENCIA set EDAD = '000a00m00d' where FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)  and EDAD = '00a00m00d' */
 
     select fecha, edad,
              CASE WHEN RTRIM(SUBSTRING(EDAD,1,3)) > '000' THEN   convert(int, RTRIM(SUBSTRING(EDAD,2,2)))
              when RTRIM(SUBSTRING(EDAD,1,6)) > '000a00' THEN  convert(int, RTRIM(SUBSTRING(EDAD,5,2)))
              when RTRIM(EDAD) between '000a00m00d'  and '000a00m31d' THEN  convert(int, RTRIM(SUBSTRING(EDAD,8,2)))
             else '00'   END  AS EDAD from EMERGENCIA  where FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)  
 