/* PUNTO 17 - NIÑO DE 37 MESES QUE COMPLETARON ESQUEMA NACIONAL DE INMUNIZACIONES */

USE SIGSALUD


 declare @lcinicio varchar(6) = '062015'
 declare @lcfinal varchar(6) = '062015'
 declare @lccodigo1 VARCHAR(6) = '90701'
 declare @lccodigo2 VARCHAR(6) = '90707'
 declare @lccodigo3 VARCHAR(6) = '90712'
 declare @lccodigo4 VARCHAR(6) = '90713 '
 
 declare @lmeses varchar(2) = '1'
 declare @ltipoedada varchar(2) = 'A'
 declare @ledada varchar(1)= '3'
 
 
 declare @ltipoedadm varchar(2) = 'M'
 declare @ledadm varchar(1)= '12'
  
 declare @ltipoedadd varchar(2) = 'D'
 declare @ledadd varchar(1)= '31'
 
 
 /* para años */
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedada
  and EDAD <= @ledada

union all  
/* para meses */
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadm
  and EDAD <= @ledadm
  
union all  
/* para dias */
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO2 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO3 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
  union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO4 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
union all  
  select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO5 AS CODIGO, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and PERIODO between @lcinicio and @lcfinal and TIPOEDAD = @ltipoedadd
  and EDAD <= @ledadd
  
  

  
  /* 
  
     declare @lcinicio DATETIME = CONVERT(DATETIME, '2015-06-01', 101) 
     declare @lcfinal DATETIME = CONVERT(DATETIME, '2015-06-30', 101) 

SELECT * FROM SIGSALUD.dbo.hospitalizacion where fecha1 between @lcinicio and @lcfinal and dx4 between  'o80' and 'o84' AND PACIENTE = '2008105589' */