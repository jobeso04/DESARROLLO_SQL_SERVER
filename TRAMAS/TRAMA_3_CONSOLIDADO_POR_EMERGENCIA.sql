/* TRAMA 3: REPORTE CONSOLIDADO ASISTENCIAL POR EMERGENCIA */
/*
declare @lcfecha1 datetime = convert(datetime, ?lc_fecha1, 101)
declare @lcfecha2 datetime = convert(datetime, ?lc_fecha2, 101)
*/
declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[EMERGENCIA] 
WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO > '3' GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)


declare @lcfecha1 datetime = convert(datetime, ?lc_fecha1, 101)
declare @lcfecha2 datetime = convert(datetime, ?lc_fecha2, 101)


declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)

declare @lcfecha1 datetime = convert(datetime, ?lc_fecha1, 101)
declare @lcfecha2 datetime = convert(datetime, ?lc_fecha2, 101)
SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[EMERGENCIA] 
WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO > '3' GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)


USE SIGSALUD
SELECT TOP 1 convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) as edad FROM EMERGENCIA WHERE SUBSTRING(EDAD,1,3) <> '00a'  and PACIENTE = '2016265173' ORDER BY FECHA DESC

SELECT CONVERT(INT, SUBSTRING(EDAD,1,3)) FROM EMERGENCIA WHERE SUBSTRING(EDAD,1,3) <> '00a'  and PACIENTE = '2016265173' ORDER BY FECHA DESC


SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO = '0' GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)


declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
declare @lidpaciente varchar(13) = '2016259930'

declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[EMERGENCIA]  where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)

select @lc_sexo
    

declare @lc_edad varchar(3) = (SELECT TOP 1 convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) as edad FROM [SIGSALUD].[dbo].[EMERGENCIA] 
  WHERE SUBSTRING(EDAD,1,3) <> '00a'  and PACIENTE = @lidpaciente ORDER BY FECHA DESC)
declare @lc_grupo_edad varchar(2) = (SELECT CASE WHEN @lc_edad < 1 THEN '1' WHEN @lc_edad BETWEEN 1 AND 4 THEN '2' WHEN @lc_edad BETWEEN 5 AND 9 THEN '3' WHEN @lc_edad BETWEEN 10 AND 14 THEN '4' WHEN @lc_edad BETWEEN 15 AND 19 THEN '5' 
     WHEN @lc_edad BETWEEN 20 AND 24 THEN '6' WHEN @lc_edad BETWEEN 25 AND 29 THEN '7' WHEN @lc_edad BETWEEN 30 AND 34 THEN '8' WHEN @lc_edad BETWEEN 35 AND 39 THEN '9' WHEN @lc_edad BETWEEN 40 AND 44 THEN '10'
       WHEN @lc_edad BETWEEN 45 AND 49 THEN '11' WHEN @lc_edad BETWEEN 50 AND 54 THEN '12' WHEN @lc_edad BETWEEN 55 AND 59 THEN '13' WHEN @lc_edad BETWEEN 60 AND 64 THEN '14' WHEN @lc_edad >=65  THEN '15'
          ELSE  'ND' END) 





          
select @lc_grupo_edad



declare @lc_edad1 varchar(3) = (SELECT top 1 (case when convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) = '00a' then  '0' else
convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) end)  FROM [SIGSALUD].[dbo].[EMERGENCIA]) 

declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)

 SELECT CASE WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) < 1 THEN '1' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 1 AND 4 THEN '2' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 5 AND 9 THEN '3' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 10 AND 14 THEN '4' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 15 AND 19 THEN '5' 
   WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 20 AND 24 THEN '6' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 25 AND 29 THEN '7' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 30 AND 34 THEN '8' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 35 AND 39 THEN '9' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 40 AND 44 THEN '10'
     WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 45 AND 49 THEN '11' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 50 AND 54 THEN '12' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 55 AND 59 THEN '13' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) BETWEEN 60 AND 64 THEN '14' WHEN convert(varchar(3), CONVERT(INT, SUBSTRING(EDAD,1,3))) >=65  THEN '15'
        ELSE  'ND' END as grupo_edad  FROM [SIGSALUD].[dbo].[EMERGENCIA]  where  SUBSTRING(EDAD,1,3) <> '00a' and FECHA BETWEEN @lcfecha1  AND @lcfecha2  and SEXO = 'M' order by edad




  WHERE SUBSTRING(EDAD,1,3) <> '00a')  

select @lc_edad




select '1' as sex, grupo_edad, sum(atencion_medico) as atm, sum(atencion_no_medico) as atnm, count(atendido_por_mes) as attm from [SIGSALUD].[dbo].[TMP_TR_ATEN]
        where sexo_paciente = '1' group by grupo_edad order by convert(int, grupo_edad)   
        
        


  declare @lcfecha1 datetime = convert(datetime, ?lc_fecha1, 101)
  declare @lcfecha2 datetime = convert(datetime, ?lc_fecha2, 101)
  
  declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)

  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
  declare @lccodigo_ipress varchar(8) = '00005947'
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEX as SEXO_PACIENTE, GRUPO_EDAD, atm + atnm as NUMERO_TOTAL_MEDICAS_NO_MEDICAS, ATTM AS ATENCION_POR_MES FROM [SIGSALUD].[dbo].[TMP_TR_ATEN_M]  
  UNION ALL
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEX as SEXO_PACIENTE, GRUPO_EDAD, atm + atnm as NUMERO_TOTAL_MEDICAS_NO_MEDICAS, ATTM AS ATENCION_POR_MES FROM [SIGSALUD].[dbo].[TMP_TR_ATEN_F]

        
        

