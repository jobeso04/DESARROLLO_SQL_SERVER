/* PUNTO 18 -  */


USE SIGSALUD


 declare @lcinicio varchar(6) = '102015'
 declare @lcfinal varchar(6) = '102015'
 declare @lccodigo1 VARCHAR(6) = 'Z001'
 declare @lccodigo2 VARCHAR(6) = '90707'
 declare @lccodigo3 VARCHAR(6) = '90712'
 declare @lccodigo4 VARCHAR(6) = '90713'
 declare @labconf varchar(1) = '6'
 
  
 declare @lmeses varchar(2) = '1'
 declare @ltipoedada varchar(2) = 'A'
 declare @ledada varchar(1)= '1'
 
 
 declare @ltipoedadm varchar(2) = 'M'
 declare @ledadm varchar(2)= '12'
  
 declare @ltipoedadd varchar(2) = 'D'
 declare @ledadd varchar(2)= '31'
 
 
 /* para años */
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF1 >= @labconf and EDAD = @ledada
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
 WHERE CODIGO2 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF2 >= @labconf and EDAD = @ledada
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF3 >= @labconf and EDAD = @ledada
 
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF4 >= @labconf and EDAD = @ledada  
  
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF5 >= @labconf and EDAD = @ledada
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO6 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada and LABCONF6 >= @labconf and EDAD = @ledada
union all  


/* para meses */

  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO1 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF1 >= @labconf and EDAD <= @ledadm

Union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF2 >= @labconf and EDAD <= @ledadm  
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF3 >= @labconf and EDAD <= @ledadm  
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF4 >= @labconf and EDAD <= @ledadm    
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF5 >= @labconf and EDAD <= @ledadm      
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm and LABCONF5 >= @labconf and EDAD <= @ledadm      
union all  

/* para dias */
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF1 >= @labconf
  
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF2 >= @labconf  
  
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO3 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF3 >= @labconf    

  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO4 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF4 >= @labconf      
  
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO5 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF5 >= @labconf        
  
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
WHERE CODIGO6 = @lccodigo1 and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd and EDAD <= @ledadd and LABCONF6 >= @labconf        
  

  
  /* 
  
     declare @lcinicio DATETIME = CONVERT(DATETIME, '2015-06-01', 101) 
     declare @lcfinal DATETIME = CONVERT(DATETIME, '2015-06-30', 101) 

SELECT * FROM SIGSALUD.dbo.hospitalizacion where fecha1 between @lcinicio and @lcfinal and dx4 between  'o80' and 'o84' AND PACIENTE = '2008105589' */