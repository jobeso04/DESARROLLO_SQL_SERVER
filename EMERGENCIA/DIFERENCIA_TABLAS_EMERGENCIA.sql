use sigsalud 
 
DECLARE @lfecha1 varchar(10) = '2016-03-01'
DECLARE @lfecha2 varchar(10) = '2016-03-31'

SELECT ' TABLA EMERGENCIA ' AS TITULO, COUNT(emergencia_id) AS total 
    FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1 <> '0'
    
UNION ALL 
SELECT ' TABLA ATENCIONES POR ESPECIALIDAD POR GRUPO ETAREO - EMERGENCIA ' AS TITULO, COUNT(emergencia_id) AS total 
FROM         dbo.EMERGENCIA INNER JOIN
                      dbo.CONSULTORIO ON dbo.EMERGENCIA.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.CIEX ON dbo.EMERGENCIA.CIEX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.BDCATEGORIAS ON dbo.EMERGENCIA.CODGRUPO = dbo.BDCATEGORIAS.COD_CAT INNER JOIN
                      dbo.BDCAPITULOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDCAPITULOS.COD_CAP INNER JOIN
                      dbo.BDGRUPOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDGRUPOS.COD_CAP AND dbo.BDCATEGORIAS.COD_GRU = dbo.BDGRUPOS.COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)

SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 into emergencia01
  FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1 <> '0'

SELECT emergencia.EMERGENCIA_ID, emergencia.fecha, emergencia.nombres, emergencia.CODGRUPO, emergencia.CIEX1 into emergencia02
FROM         dbo.EMERGENCIA INNER JOIN
                      dbo.CONSULTORIO ON dbo.EMERGENCIA.CONSULTORIO = dbo.CONSULTORIO.CONSULTORIO INNER JOIN
                      dbo.CIEX ON dbo.EMERGENCIA.CIEX1 = dbo.CIEX.CIEX INNER JOIN
                      dbo.BDCATEGORIAS ON dbo.EMERGENCIA.CODGRUPO = dbo.BDCATEGORIAS.COD_CAT INNER JOIN
                      dbo.BDCAPITULOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDCAPITULOS.COD_CAP INNER JOIN
                      dbo.BDGRUPOS ON dbo.BDCATEGORIAS.COD_CAP = dbo.BDGRUPOS.COD_CAP AND dbo.BDCATEGORIAS.COD_GRU = dbo.BDGRUPOS.COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)

       
                      
SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 FROM emergencia01
WHERE EMERGENCIA_ID NOT IN (SELECT emergencia02.EMERGENCIA_ID FROM emergencia02) order by FECHA asc

 drop table emergencia01
 drop table emergencia02