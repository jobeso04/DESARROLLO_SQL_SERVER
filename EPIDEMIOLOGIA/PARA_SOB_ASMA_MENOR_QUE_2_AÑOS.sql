/* Consulta de Epidemiologia */

/* Tabla de Emergencia */
USE SIGSALUD
GO
DECLARE @lcfechainicio datetime = convert(datetime, '2015-08-01', 101)
DECLARE @lcfechafin datetime = convert(datetime, '2015-08-30', 101)
    declare @lciex1 varchar(3) = 'J45'
    declare @lciex2 varchar(3) = 'J22X'
    declare @lciex3 varchar(6) = 'R50.9'
    declare @ledad varchar(3) = '002'
    declare @ledad1 varchar(6) = '004'
    declare @ltipodiagnostico varchar(1) = 'd'
    declare @ltipoedad_anios varchar(1)= 'A'
    declare @ltipoedad_mes varchar(1)= 'M'
    declare @ltipoedad_dias varchar(1)= 'D'
    DECLARE @ledadirasinicio varchar(2) = '2'
    DECLARE @ledadirasfin varchar(2) = '4'    
    
    
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX1 as CIEXTOTAL
     from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX1 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX2 as CIEXTOTAL
     from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX2 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
      UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX3 as CIEXTOTAL
     from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX3 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
     from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX4 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
     UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
    from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX5 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
    from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX6 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX7 as CIEXTOTAL
    from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX7 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX8 as CIEXTOTAL
    from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX8 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX9 as CIEXTOTAL
    from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX9 LIKE @lciex1 + '%' AND SUBSTRING(edad,1,3) <@ledad 
    UNION ALL
    
     
    
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios AND EDAD < @ledadirasinicio
    UNION ALL
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios AND EDAD < @ledadirasinicio
    UNION ALL
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios  AND EDAD < @ledadirasinicio
    UNION ALL
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios  AND EDAD < @ledadirasinicio
    UNION ALL
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios  AND EDAD < @ledadirasinicio
    UNION ALL
    SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
      NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
      WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 BETWEEN @lciex1 AND @lciex2 and DIAGNOST1 = @ltipodiagnostico
         AND TIPOEDAD = @ltipoedad_anios and EDAD < @ledadirasinicio
    UNION ALL
    
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from HOSPITALIZACION 
     where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX2 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX2 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX3 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX3 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX4 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX4 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX5 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX5 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX6 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX6 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX8 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX8 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX9 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX9 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX10 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX10 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX11 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX11 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX12 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX12 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio
    UNION ALL
    select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
       DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX13 AS CIEXTOTAL from HOSPITALIZACION 
         where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX13 BETWEEN @lciex1 AND @lciex2 and TipoEdad = @ltipoedad_anios  and EDAD < @ledadirasinicio

  
  
  
  /* SELECT Localidad,Nombre FROM Localidad where localidad = 'L05' order by Nombre */
  
 /*  SELECT Ubigeo,Distrito,Provincia,Departamento FROM Ubigeo WHERE ACTIVO='1' ORDER BY Distrito */
  
  /* SELECT Ubigeo,Distrito,Provincia,Departamento FROM Ubigeo where UBIGEO = '150118'  */
  
  
  
 