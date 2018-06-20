USE SIGSALUD
GO

 declare @lcinicio varchar(6) = '062015'
  declare @lcfinal varchar(6) = '062015'
  declare @lccodigo1 VARCHAR(6) = 'Z3591'
  declare @lccodigo2 VARCHAR(6) = 'Z3592'
  declare @lccodigo3 VARCHAR(6) = 'Z3593'
  declare @lclabconf1 varchar(2) = '1'
  declare @lclabconf2 varchar(2) = '2'
  declare @lclabconf3 varchar(2) = '3'
  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, LABCONF1 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 >= '6' and PERIODO between @lcinicio and @lcfinal  

  UNION ALL  
  
  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, LABCONF2 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 >= '6' and PERIODO between @lcinicio and @lcfinal
 UNION ALL  

 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, LABCONF3 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 >= '6' and PERIODO between @lcinicio and @lcfinal 
 UNION ALL  
  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, LABCONF4 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 >= '6' and PERIODO between @lcinicio and @lcfinal
 UNION ALL  
 

 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, LABCONF5, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 >= '6'  and PERIODO between @lcinicio and @lcfinal
  UNION ALL  
    
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO6 AS CODIGO, LABCONF6 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 >= '6'  and PERIODO between @lcinicio and @lcfinal  order by ID_PACIENTE asc