  declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
  DECLARE @lcdx varchar(10) = 'A09'
  declare @lsexo varchar(2) = '1'
  declare @lcsexo varchar(2) = case when @lsexo = '1' then 'M' ELSE 'F' END
  DECLARE @lcgrup_ed varchar(2) = '1'
  declare @lnatendidos int

  if @lcgrup_ed  = '1'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1)
   end;
 
  if @lcgrup_ed  = '2'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4)
   end;
 
 if @lcgrup_ed  = '3'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9)
   end;
 
 
 if @lcgrup_ed  = '4'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14)
   end;
 
 if @lcgrup_ed  = '5'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19)
   end;
 
 if @lcgrup_ed  = '6'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24)
   end;
 
 if @lcgrup_ed  = '7'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29)
   end;
   
 if @lcgrup_ed  = '8'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34)
   end;
 
 if @lcgrup_ed  = '9'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39)
   end;
 
 if @lcgrup_ed  = '10'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44)
   end;
 
 if @lcgrup_ed  = '11'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49)
   end;
 
 if @lcgrup_ed  = '12'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54)
   end;
 
 
 if @lcgrup_ed  = '13'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59)
   end;
 
 if @lcgrup_ed  = '14'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64)
   end;
 
 if @lcgrup_ed  = '15'
   begin
    set @lnatendidos = (SELECT COUNT(*) FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo and convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) > 65)
   end;
 
  
  select @lnatendidos
  
  
  
  
     
     
     
     
  
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1
  
  
  
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = @lcsexo AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1
     
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx AND SEXO = @lcsexo AND  convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4
 
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx AND SEXO = @lcsexo AND  convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9
     
  
  
  
  
  
declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
   
  truncate table  [dbo].[TMP_TRAMA_PRE_C2]
  DECLARE @lctrama_pre_c2 table (sexo varchar(1),  grupo_edad varchar(2), diagnostico_emergencia varchar(10))
  INSERT INTO @lctrama_pre_c2
    SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX4) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX4 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
    SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX5) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX5 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,  (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX6) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX6 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
         
insert into [dbo].[TMP_TRAMA_PRE_C2]         
SELECT distinct sexo, grupo_edad, diagnostico_emergencia, 0 AS TOTAL_ATENDIDOS FROM @lctrama_pre_c2 
select * from [dbo].[TMP_TRAMA_PRE_C2] order BY SEXO, convert(int, GRUPO_EDAD) asc



  declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
	  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
	  declare @lccodigo_ipress varchar(8) = '000045987'
	  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, GRUPO_EDAD, DIAGNOSTICO_EMERGENCIA, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2]
	  
	  





  
  DECLARE @lcdx varchar(10) = 'A09'
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx  AND SEXO = 'M' AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1
     
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx AND SEXO = 'M' AND  convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4
 
  SELECT COUNT(*) AS ATENDIDOS FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
     AND CIEX4 = @lcdx AND SEXO = 'M' AND  convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9
     
  
  
     

SELECT * FROM [dbo].[TMP_TRAMA_PRE_C2] order BY SEXO, convert(int, GRUPO_EDAD) asc





