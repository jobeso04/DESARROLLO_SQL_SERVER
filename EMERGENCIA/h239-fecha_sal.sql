/* H 239 - fecha_sal */

  DECLARE @lnmes int = 1
  DECLARE @lnanio int = 2018

/*
-- 4254
select * from [SIGSALUD].[dbo].[emergencia] where 
month(convert(date, fecha_sal)) = 1 and year(convert(date, fecha_sal)) = 2018   and CIEX1 <> '0'
 and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null
 
*/
      

  SELECT  'MEDICINA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
     WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null
     AND CONSULTORIO = '1050'
     AND SEGURO IN ('01', '15', '03') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	  UNION ALL
	  SELECT 'CIRUGIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	  WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2050'
	  AND SEGURO IN ('01', '15', '03')   GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'TRAUMATOLOGIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2051'
	AND SEGURO IN ('01', '15', '03') AND  CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'PEDIATRIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '3050'
	AND SEGURO IN ('01', '15', '03') AND  CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'GINECOLOGIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4050'
	AND SEGURO IN ('01', '15', '03') AND  CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'OBSTETRICIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4060'
	AND SEGURO IN ('01', '15', '03') AND  CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'MEDICINA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '1050'
	AND SEGURO IN ('02')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'CIRUGIA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2050'
	AND SEGURO IN ('02')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'TRAUMATOLOGIA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2051'
	AND SEGURO IN ('02') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'PEDIATRIA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '3050'
	AND SEGURO IN ('02')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'GINECOLOGIA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4050'
	AND SEGURO IN ('02')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'OBSTETRICIA SOAT' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4060'
	AND SEGURO IN ('02') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL 
	SELECT 'MEDICINA ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '1050'
	AND SEGURO IN ('06')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'CIRUGIA ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2050'
	AND SEGURO IN ('06')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'TRAUMATOLOGIA  ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2051'
	AND SEGURO IN ('06') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'PEDIATRIA  ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '3050'
	AND SEGURO IN ('06') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'GINECOLOGIA  ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4050'
	AND SEGURO IN ('06')  AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'OBSTETRICIA  ESSALUD' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4060'
	AND SEGURO IN ('06') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'MEDICINA MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '1050'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'CIRUGIA MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2050'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'TRAUMATOLOGIA  MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2051'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'PEDIATRIA  MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '3050'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'GINECOLOGIA  MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4050'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'OBSTETRICIA  MILITAR' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4060'
	AND SEGURO IN ('07', '10', '11','12')   AND CIEX1 > '0' GROUP BY CONSULTORIO 

	UNION ALL
	SELECT 'MEDICINA OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '1050'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'CIRUGIA OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2050'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'TRAUMATOLOGIA  OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '2051'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'PEDIATRIA  OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '3050'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'GINECOLOGIA  OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4050'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	UNION ALL
	SELECT 'OBSTETRICIA  OTROS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM [SIGSALUD].[dbo].[EMERGENCIA]
	WHERE month(convert(date, fecha_sal)) = @lnmes and year(convert(date, fecha_sal)) = @lnanio  
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND CONSULTORIO = '4060'
	AND SEGURO IN ('09', '05', '14', '16', '04', '13', '0', '08')   AND CIEX1 > '0' GROUP BY CONSULTORIO 
	
	/*USE SIGSALUD
	SELECT *  FROM EMERGENCIA WHERE month(convert(date, fecha_sal)) = 1 and year(convert(date, fecha_sal)) = 2018
    and CIEX1 <> '0'  and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null AND SEGURO = '06'*/
  
