declare @lcinicio varchar(6) = '062015'
  declare @lcfinal varchar(6) = '062015'
  declare @lccodigo1 VARCHAR(6) = 'Z3591'
  declare @lmeses varchar(2) = '1'
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, LABCONF1 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 = @lccodigo1 and LABCONF1 = @lmeses and PERIODO between @lcinicio and @lcfinal  
  UNION ALL  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, LABCONF2 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
   WHERE CODIGO2 = @lccodigo1 and LABCONF2 = @lmeses and PERIODO between @lcinicio and @lcfinal
 UNION ALL  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, LABCONF3 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
   WHERE CODIGO3 = @lccodigo1 and LABCONF3 = @lmeses and PERIODO between @lcinicio and @lcfinal 
 UNION ALL  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, LABCONF4 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 = @lccodigo1 and LABCONF4 = @lmeses and PERIODO between @lcinicio and @lcfinal
 UNION ALL  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, LABCONF5, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
   WHERE CODIGO5 = @lccodigo1 and LABCONF5 = @lmeses  and PERIODO between @lcinicio and @lcfinal
  UNION ALL  
 select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO6 AS CODIGO, LABCONF6 AS LABCONF, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 = @lccodigo1 and LABCONF6 = @lmeses  and PERIODO between @lcinicio and @lcfinal  order by ID_PACIENTE asc
  
  
  /* 
  
     declare @lcinicio DATETIME = CONVERT(DATETIME, '2015-06-01', 101) 
     declare @lcfinal DATETIME = CONVERT(DATETIME, '2015-06-30', 101) 

SELECT * FROM SIGSALUD.dbo.hospitalizacion where fecha1 between @lcinicio and @lcfinal and dx4 between  'o80' and 'o84' AND PACIENTE = '2008105589' */