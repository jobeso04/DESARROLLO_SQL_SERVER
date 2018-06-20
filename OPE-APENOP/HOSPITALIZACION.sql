use sigsalud

declare @lnmes VARCHAR(2) = 1
declare @lnanio CHAR(4) = 2015

SELECT * FROM HOSPITALIZACION WHERE month(FECHA1) = @lnmes and YEAR(fecha1) = @lnanio and CODIGOESPE1 = '1022'

select * from CONSULTORIO ORDER BY NOMBRE  ASC 

select ' MEDICINA INTERNA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'MEDICINA INTERNA' 

select ' MEDICINA INTERNA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'MEDICINA INTERNA' 
UNION ALL
select ' NEUMOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'NEUMOLOGIA' 
UNION ALL
select ' CARDIOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'CARDIOLOGIA' 
UNION ALL
select ' NEUROLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'NEUROLOGIA' 
UNION ALL
select ' GASTROENTEROLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'GASTROENTEROLOGIA' 
UNION ALL
select ' DERMATOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'DERMATOLOGIA' 
UNION ALL
select ' PSIQUIATRIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'PSIQUIATRIA' 
UNION ALL
select ' ENDOCRINOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'ENDOCRINOLOGIA' 
UNION ALL
select ' MEDICINA DE REHABILITACION ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'MEDICINA REHABILITACION' 
UNION ALL
select ' CIRUGIA GENERAL ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'CIRUGIA GENERAL' 
UNION ALL
select ' TRAUMATOLOGIA Y ORTOPEDIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'TRAUMATOLOGIA' 
UNION ALL
select ' OTORRINO LARINGOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'OTORRINOLARINGOLOGIA' 
UNION ALL
select ' OFTALMOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'OFTALMOLOGIA' 
UNION ALL
select ' UROLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'UROLOGIA' 
UNION ALL
select ' CIRUGIA PLASTICA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'CIRUGIA RECONSTRUCTIVA' 
UNION ALL
select ' CIRUGIA PEDIATRICA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'CIRUGIA PEDIATRICA' 
UNION ALL
select ' ANESTESIOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'ANESTESIOLOGIA' 
UNION ALL
select ' CONSULTORIO NIÑOS DE CERO A 7 DIAS' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'D' AND 
   EDAD BETWEEN '0' and '7' 
UNION ALL   
select ' CONSULTORIO NIÑOS DE 8 A 28 DIAS' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'D' AND 
   EDAD BETWEEN '8' and '28' 
UNION ALL
SELECT ' CONSULTORIO NIÑOS DE 29 DIAS A 6 MESES ' AS TAREA, ((select COUNT(*) AS N1 from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'D' AND  EDAD BETWEEN '29' and '31') +  
(select COUNT(*) AS N2 from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'M' AND  EDAD BETWEEN '1' and '6')) as ATENCION
UNION ALL   
select ' CONSULTORIO NIÑOS DE 7 MESES A 11 MESES ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'M' AND 
   EDAD BETWEEN '7' and '11' 
UNION ALL   
select ' CONSULTORIO NIÑOS DE 1 AÑO A 4 AÑOS ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'A' AND 
   EDAD BETWEEN '1' and '4' 
UNION ALL   
select ' CONSULTORIO NIÑOS DE 5 AÑO A 9 AÑOS ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'A' AND 
   EDAD BETWEEN '5' and '9' 
UNION ALL   
select ' CONSULTORIO NIÑOS DE 10 AÑO A 14 AÑOS ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and TIPOEDAD = 'A' AND 
   EDAD BETWEEN '10' and '14' 
UNION ALL
select ' CONSULTORIO GINECOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'GINECO-OBSTETRICIA' 
UNION ALL
select ' CONSULTORIO GINECOLOGIA-OBSTETRICIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'GINECO-OBSTETRICIA' 
UNION ALL
select ' CONSULTORIO ODONTOLOGIA ' AS TAREA, COUNT(*) AS ATENCION from HIS  where mes = @lcmes AND anio = @lcanio and HSERVICIO = 'ODONTOLOGIA' 


/* UNION ALL

select ' EMERGENCIA DE 8 A 28 DIAS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '000a00m08d' and '000a00m28d'  AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 29D A 11 MESES ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '000a00m29d' and '000a11m%' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 1 AÑO A 4 AÑOS ' AS TAREA, COUNT(*) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '001a' and '004a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 5 AÑO A 9 AÑOS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '005a' and '009a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 10 AÑO A 14 AÑOS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '010a' and '014a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE GINECOLOGIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '4050' AND ESTADO <> '0' GROUP BY CONSULTORIO
UNION ALL
select ' EMERGENCIA DE OBSTRETICIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '4060' AND ESTADO <> '0' GROUP BY CONSULTORIO


 select * from CONSULTORIO ORDER BY NOMBRE  ASC */