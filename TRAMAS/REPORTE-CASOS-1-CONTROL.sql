
declare @lcinicio varchar(6) = '062015'
declare @lcfinal varchar(6) = '062015'
declare @lccodigo1 VARCHAR(6) = 'Z3591'
declare @lccodigo2 VARCHAR(6) = 'Z3592'
declare @lccodigo3 VARCHAR(6) = 'Z3593'

declare @lclabconf1 varchar(2) = '1'
declare @lclabconf2 varchar(2) = '2'
declare @lclabconf3 varchar(2) = '3'

/* PARA CODIGO 1 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 <> '' and PERIODO between @lcinicio and @lcfinal  


UNION ALL  
  
/* PARA CODIGO 2 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2 <> '' and PERIODO between @lcinicio and @lcfinal
UNION ALL  

/* PARA CODIGO 3 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3 <> '' and PERIODO between @lcinicio and @lcfinal 
UNION ALL  
  
/* PARA CODIGO 4 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4 <> '' and PERIODO between @lcinicio and @lcfinal
UNION ALL  
 

/* PARA CODIGO 5 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5 <> ''  and PERIODO between @lcinicio and @lcfinal
  UNION ALL  
    
/* PARA CODIGO 6 */
select FICHAFAM, HSERVICIO, TIPOEDAD, EDAD, CODIGO1, LABCONF1, ID_PACIENTE, PACIENTE  from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6 <> ''  and PERIODO between @lcinicio and @lcfinal  order by ID_PACIENTE asc
  

/* 2010197144 */

/* SELECT * FROM SIGSALUD.dbo.hospitalizacion where PACIENTE = '2014243836' and fecha1 between convert(datetime, '2015-06-01',101) and convert(datetime, '2015-06-30',101)

SELECT * FROM SIGSALUD.dbo.hospitalizacion where fecha1 between convert(datetime, '2015-06-01',101) and convert(datetime, '2015-06-30',101) and dx4 between  'o80' and 'o84' AND PACIENTE = '2010197144'

select * from consultorio where CONSULTORIO = '4041' */

/* 0060230              */