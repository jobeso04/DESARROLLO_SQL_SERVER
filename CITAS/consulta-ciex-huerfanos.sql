declare @lcciex TABLE (CIEX VARCHAR(50))
insert @lcciex
select [CIEX] FROM [SIGSALUD].[dbo].[CIEX_PROCESAR]
select 'CONSULTORIOS' AS SERVICIO, PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD1 as DESCRIPCION, CODIGO1 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO1 in (select ciex from @lcciex)
UNION ALL
select 'CONSULTORIOS' AS SERVICIO, PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD2 as DESCRIPCION, CODIGO2 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO2 in (select ciex from @lcciex)
union all
select 'CONSULTORIOS' AS SERVICIO, PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD3 as DESCRIPCION, CODIGO3 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO3 in (select ciex from @lcciex)
UNION ALL
select 'CONSULTORIOS' AS SERVICIO, PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD4 as DESCRIPCION, CODIGO4 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO4 in (select ciex from @lcciex)
union all
select 'CONSULTORIOS' AS SERVICIO, PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD5 as DESCRIPCION, CODIGO5 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO5 in (select ciex from @lcciex)
UNION ALL
select 'CONSULTORIOS' AS SERVICIO,  PERIODO, ANIO, MES, DIA, FICHAFAM, EDAD, TIPOEDAD, MT, SEXO, DES_COD6 as DESCRIPCION, CODIGO6 AS CODIGO_CIEX, FINANCIA, PACIENTE, PROF_CITA, HSERVICIO
   from [SIGSALUD].[dbo].[HIS] WHERE CODIGO6 in (select ciex from @lcciex)
UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX4 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX4 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX4 IN (select ciex from @lcciex)
UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX5 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX5 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX5 IN (select ciex from @lcciex)
UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX6 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX6 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX6 IN (select ciex from @lcciex)

UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX1 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX1 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX1 IN (select ciex from @lcciex)
UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX2 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX2 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX2 IN (select ciex from @lcciex)
UNION ALL   
select 'EMERGENCIA ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA))  AS PERIODO, YEAR(FECHA) AS ANIO, MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIA, B.HISTORIA AS FICHAFAM,
convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, A.SEXO, C.NOMBRE AS DESCRIPCION, CIEX3 AS CODIGO_CIEX, A.SEGURO AS FINANCIA, A.NOMBRES AS PACIENTE, D.NOMBRE AS PROF_CITA, E.NOMBRE AS HSERVICIO
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE LEFT JOIN [SIGSALUD].[dbo].[CIEX] C ON A.CIEX3 = C.CIEX LEFT JOIN 
[SIGSALUD].[dbo].[MEDICO] D ON A.QUIEN_ATIENDE = D.MEDICO LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] E ON E.CONSULTORIO = A.CONSULTORIO
WHERE A.CIEX3 IN (select ciex from @lcciex)
UNION ALL
select 'HOSPITALIZACION ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA1)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA1))  AS PERIODO, YEAR(FECHA1) AS ANIO, MONTH(A.FECHA1) AS MES, DAY(A.FECHA1) AS DIA,
 A.HISTORIA AS FICHAFAM, convert(int, REPLACE(SUBSTRING(B.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, B.SEXO, A.EXPR4 AS DESCRIPCION, DX1 AS CODIGO_CIEX, A.Expr1 AS FINANCIA, A.NOMBRES AS PACIENTE, a.Expr3 as PROF_CITA, A.Expr13 AS HSERVICIO
 FROM [SIGSALUD].[dbo].[V_HOSPITALIZACION] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE
 WHERE A.DX1 IN (select ciex from @lcciex)
UNION ALL
select 'HOSPITALIZACION ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA1)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA1))  AS PERIODO, YEAR(FECHA1) AS ANIO, MONTH(A.FECHA1) AS MES, DAY(A.FECHA1) AS DIA,
 A.HISTORIA AS FICHAFAM, convert(int, REPLACE(SUBSTRING(B.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, B.SEXO, A.EXPR5 AS DESCRIPCION, DX2 AS CODIGO_CIEX, A.Expr1 AS FINANCIA, A.NOMBRES AS PACIENTE, a.Expr3 as PROF_CITA, A.Expr13 AS HSERVICIO
 FROM [SIGSALUD].[dbo].[V_HOSPITALIZACION] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE
 WHERE A.DX2 IN (select ciex from @lcciex)
UNION ALL
select 'HOSPITALIZACION ' AS SERVICIO,  RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(FECHA1)))),2) + CONVERT(VARCHAR(4), YEAR(FECHA1))  AS PERIODO, YEAR(FECHA1) AS ANIO, MONTH(A.FECHA1) AS MES, DAY(A.FECHA1) AS DIA,
 A.HISTORIA AS FICHAFAM, convert(int, REPLACE(SUBSTRING(B.EDAD,1,4),'a','')) AS EDAD, 'A' AS TIPOEDAD, '' AS MT, B.SEXO, A.EXPR6 AS DESCRIPCION, DX3 AS CODIGO_CIEX, A.Expr1 AS FINANCIA, A.NOMBRES AS PACIENTE, a.Expr3 as PROF_CITA, A.Expr13 AS HSERVICIO
 FROM [SIGSALUD].[dbo].[V_HOSPITALIZACION] A LEFT JOIN [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE
 WHERE A.DX3 IN (select ciex from @lcciex)