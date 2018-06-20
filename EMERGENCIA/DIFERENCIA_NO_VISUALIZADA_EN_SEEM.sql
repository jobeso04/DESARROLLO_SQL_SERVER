
  DECLARE @lfecha1 varchar(10) = '2017-12-01'
  DECLARE @lfecha2 varchar(10) = '2017-12-31'
  SELECT ' TABLA EMERGENCIA ' AS TITULO, COUNT(emergencia_id) AS total 
    FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1 <> '0'
  UNION ALL 
  SELECT ' TABLA ATENCIONES POR ESPECIALIDAD POR GRUPO ETAREO - EMERGENCIA ' AS TITULO, COUNT(emergencia_id) AS total 
  FROM    [SIGSALUD].[dbo].[EMERGENCIA] INNER JOIN
                      [SIGSALUD].[dbo].[CONSULTORIO] ON [SIGSALUD].[dbo].[EMERGENCIA].CONSULTORIO = [SIGSALUD].[dbo].[CONSULTORIO].CONSULTORIO INNER JOIN
                      [SIGSALUD].[dbo].[CIEX] ON [SIGSALUD].[dbo].[EMERGENCIA].CIEX1 = [SIGSALUD].[dbo].[CIEX].CIEX INNER JOIN
                      [SIGSALUD].[dbo].[BDCATEGORIAS] ON [SIGSALUD].[dbo].[EMERGENCIA].CODGRUPO = [SIGSALUD].[dbo].[BDCATEGORIAS] .COD_CAT INNER JOIN
                      [SIGSALUD].[dbo].[BDCAPITULOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP = [SIGSALUD].[dbo].[BDCAPITULOS].COD_CAP INNER JOIN
                      [SIGSALUD].[dbo].[BDGRUPOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP =  [SIGSALUD].[dbo].[BDGRUPOS].COD_CAP AND [SIGSALUD].[dbo].[BDCATEGORIAS].COD_GRU = [SIGSALUD].[dbo].[BDGRUPOS].COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)
                      
                      
  DECLARE @lfecha1 varchar(10) = '2017-12-01'
  DECLARE @lfecha2 varchar(10) = '2017-12-31'
  
  SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 into [SIGSALUD].[dbo].[emergencia01]
    FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) AND CIEX1 <> '0'
  
  
select * from [SIGSALUD].[dbo].[emergencia01]  
  DECLARE @lfecha1 varchar(10) = '2017-12-01'
  DECLARE @lfecha2 varchar(10) = '2017-12-31'
SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 FROM [SIGSALUD].[dbo].[emergencia02]    
    
    
  SELECT emergencia.EMERGENCIA_ID, emergencia.fecha, emergencia.nombres, emergencia.CODGRUPO, emergencia.CIEX1 into [SIGSALUD].[dbo].[emergencia02]
  FROM   [SIGSALUD].[dbo].[EMERGENCIA] INNER JOIN
                      [SIGSALUD].[dbo].[CONSULTORIO] ON [SIGSALUD].[dbo].[EMERGENCIA].CONSULTORIO = [SIGSALUD].[dbo].[CONSULTORIO].CONSULTORIO INNER JOIN
                      [SIGSALUD].[dbo].[CIEX] ON [SIGSALUD].[dbo].[EMERGENCIA].CIEX1 = [SIGSALUD].[dbo].[CIEX].CIEX INNER JOIN
                      [SIGSALUD].[dbo].[BDCATEGORIAS] ON [SIGSALUD].[dbo].[EMERGENCIA].CODGRUPO = [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAT INNER JOIN
                      [SIGSALUD].[dbo].[BDCAPITULOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP = [SIGSALUD].[dbo].[BDCAPITULOS].COD_CAP INNER JOIN
                      [SIGSALUD].[dbo].[BDGRUPOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP = [SIGSALUD].[dbo].[BDGRUPOS].COD_CAP AND [SIGSALUD].[dbo].[BDCATEGORIAS].COD_GRU = [SIGSALUD].[dbo].[BDGRUPOS].COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)
  SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 FROM [SIGSALUD].[dbo].[emergencia02]
  
  WHERE EMERGENCIA_ID NOT IN (SELECT emergencia02.EMERGENCIA_ID FROM [SIGSALUD].[dbo].[emergencia02]) order by CODGRUPO asc
  drop table [SIGSALUD].[dbo].[emergencia01]
  drop table [SIGSALUD].[dbo].[emergencia02]



SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 from [SIGSALUD].[dbo].[emergencia01] order by emergencia_id 
4882

SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 FROM [SIGSALUD].[dbo].[emergencia02] order by emergencia_id 
4883



SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 from [SIGSALUD].[dbo].[emergencia01] where emergencia_id = '17055563'

SELECT emergencia_id, fecha, NOMBRES, CODGRUPO, CIEX1 FROM [SIGSALUD].[dbo].[emergencia02] where emergencia_id = '17055563'

select nombres, CONSULTORIO, CIEX1, CODGRUPO, codgrupo from  [SIGSALUD].[dbo].[EMERGENCIA] where emergencia_id = '17055563'

10

select edad, nombres, CONSULTORIO, CIEX1, CODGRUPO, codgrupo from  [SIGSALUD].[dbo].[EMERGENCIA] where emergencia_id = '17055563'
update [SIGSALUD].[dbo].[EMERGENCIA] set CIEX1 = 'J40'  where emergencia_id = '17055563'
select * from [SIGSALUD].[dbo].[CIEX] where CIEX = 'J42'
select * from [SIGSALUD].[dbo].[BDCATEGORIAS] where COD_CAT = 'J42'
select * from [SIGSALUD].[dbo].[BDCAPITULOS] where COD_CAP = '10'
select * from [SIGSALUD].[dbo].[BDGRUPOS] where COD_GRU = '05'


[SIGSALUD].[dbo].[BDCAPITULOS]

FROM    [SIGSALUD].[dbo].[EMERGENCIA] INNER JOIN
                      [SIGSALUD].[dbo].[CONSULTORIO] ON [SIGSALUD].[dbo].[EMERGENCIA].CONSULTORIO = [SIGSALUD].[dbo].[CONSULTORIO].CONSULTORIO INNER JOIN
                      [SIGSALUD].[dbo].[CIEX] ON [SIGSALUD].[dbo].[EMERGENCIA].CIEX1 = [SIGSALUD].[dbo].[CIEX].CIEX INNER JOIN
                      [SIGSALUD].[dbo].[BDCATEGORIAS] ON [SIGSALUD].[dbo].[EMERGENCIA].CODGRUPO = [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAT INNER JOIN
                      [SIGSALUD].[dbo].[BDCAPITULOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP = [SIGSALUD].[dbo].[BDCAPITULOS].COD_CAP INNER JOIN
                      [SIGSALUD].[dbo].[BDGRUPOS] ON [SIGSALUD].[dbo].[BDCATEGORIAS].COD_CAP =  [SIGSALUD].[dbo].[BDGRUPOS].COD_CAP AND [SIGSALUD].[dbo].[BDCATEGORIAS].COD_GRU = [SIGSALUD].[dbo].[BDGRUPOS].COD_GRU
                      WHERE  EMERGENCIA.FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101)
                      