 use sigsalud 
  DECLARE @lfecha1 varchar(10) = '2017-10-01'
  DECLARE @lfecha2 varchar(10) = '2017-10-31'

SELECT emergencia_id
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1  <> '0' 
    AND CIEX4 <> '0' and rtrim(CIEX1) = '0'   order by emergencia_id asc
    




SELECT emergencia_id
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1  <> '0'     order by emergencia_id asc

SELECT  
    
*/

SELECT emergencia_id
  FROM         dbo.EMERGENCIA INNER JOIN
                      dbo.CONSULTORIO ON dbo.EMERGENCIA.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.CIEX ON dbo.EMERGENCIA.CIEX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.BDCATEGORIAS ON dbo.EMERGENCIA.CODGRUPO = dbo.BDCATEGORIAS.COD_CAT INNER JOIN
                      dbo.BDCAPITULOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDCAPITULOS.COD_CAP INNER JOIN
                      dbo.BDGRUPOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDGRUPOS.COD_CAP AND dbo.BDCATEGORIAS.COD_GRU = dbo.BDGRUPOS.COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)
                      
 order by emergencia_id asc


    
    
select * from EMERGENCIA where EMERGENCIA_ID = '17045153'
union all
select fecha, CIEX1, ciex4 from EMERGENCIA where EMERGENCIA_ID = '17045154'

select fecha, CIEX1, ciex4 from EMERGENCIA where CIEX1 = '0' and CIEX4 <> '0' 



union all
select * from EMERGENCIA where EMERGENCIA_ID = '17045155'


update EMERGENCIA set CIEX1 = '0' where EMERGENCIA_ID = '17045154'


  
SELECT emergencia_id
  FROM         dbo.EMERGENCIA INNER JOIN
                      dbo.CONSULTORIO ON dbo.EMERGENCIA.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.CIEX ON dbo.EMERGENCIA.CIEX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.BDCATEGORIAS ON dbo.EMERGENCIA.CODGRUPO = dbo.BDCATEGORIAS.COD_CAT INNER JOIN
                      dbo.BDCAPITULOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDCAPITULOS.COD_CAP INNER JOIN
                      dbo.BDGRUPOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDGRUPOS.COD_CAP AND dbo.BDCATEGORIAS.COD_GRU = dbo.BDGRUPOS.COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)
                      
 order by emergencia_id asc
                       
                      
                        
  
  
  
SELECT *
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1  = '' order by nombres asc
    
    
    
    
  
  SELECT *
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1  = '0' order by fecha asc
    
    
    
  
  
  
  SELECT *
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND NOMBREs like 'valenzuela cuba%'
    
    
  
select * from CIEX where CIEX like 't00%'
  
  
  SELECT *
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1   <> '0'
    
    
    
    5756
    
    
    6414
    
  UNION ALL 
  SELECT ' TABLA ATENCIONES POR ESPECIALIDAD POR GRUPO ETAREO - EMERGENCIA ' AS TITULO, COUNT(emergencia_id) AS total 
  FROM         dbo.EMERGENCIA INNER JOIN
                      dbo.CONSULTORIO ON dbo.EMERGENCIA.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.CIEX ON dbo.EMERGENCIA.CIEX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.BDCATEGORIAS ON dbo.EMERGENCIA.CODGRUPO = dbo.BDCATEGORIAS.COD_CAT INNER JOIN
                      dbo.BDCAPITULOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDCAPITULOS.COD_CAP INNER JOIN
                      dbo.BDGRUPOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDGRUPOS.COD_CAP AND dbo.BDCATEGORIAS.COD_GRU = dbo.BDGRUPOS.COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)