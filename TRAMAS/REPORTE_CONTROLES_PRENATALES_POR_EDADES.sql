
declare @lcinicio varchar(6) = '062015'
declare @lcfinal varchar(6) = '062015'
declare @lccodigo1 VARCHAR(6) = 'Z3591'
declare @lccodigo2 VARCHAR(6) = 'Z3592'
declare @lccodigo3 VARCHAR(6) = 'Z3593'

declare @lclabconf1 varchar(2) = '1'
declare @lclabconf2 varchar(2) = '2'
declare @lclabconf3 varchar(2) = '3'

/* PARA CODIGO 1 */

SELECT 'PARA CODIGO 1 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54  
  
UNION ALL    
/* PARA CODIGO 2 */

SELECT 'PARA CODIGO 2 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54    
  
UNION ALL  
  
/* PARA CODIGO 3 */
SELECT 'PARA CODIGO 3 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54    
    
UNION ALL
    
/* PARA CODIGO 4 */
SELECT 'PARA CODIGO 4 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54    
    
        
/* PARA CODIGO 5 */
UNION ALL  
SELECT 'PARA CODIGO 5 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54                 
  
  /* PARA CODIGO 6 */
UNION ALL  
SELECT 'PARA CODIGO 6 :' AS EDAD, ' ' AS CUENTA  
UNION ALL
select 'EDAD : 10 - 14 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 10 AND 14
UNION ALL  
select 'EDAD : 15 - 19 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 15 AND 19
UNION ALL
select 'EDAD : 20 - 24 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 20 AND 24
UNION ALL
select 'EDAD : 25 - 29 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 25 AND 29
UNION ALL
select 'EDAD : 30 - 34 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 30 AND 34
UNION ALL
select 'EDAD : 35 - 39 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 35 AND 39
UNION ALL
select 'EDAD : 40 - 44 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 40 AND 44
UNION ALL  
select 'EDAD : 45 - 49 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 45 AND 49
UNION ALL  
select 'EDAD : 50 - 54 :: ' AS EDAD,  COUNT(FICHAFAM) AS CUENTA from SIGSALUD.dbo.HIS 
WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> '' and PERIODO between @lcinicio and @lcfinal
  AND TIPOEDAD = 'A' AND EDAD BETWEEN 50 AND 54                 
  