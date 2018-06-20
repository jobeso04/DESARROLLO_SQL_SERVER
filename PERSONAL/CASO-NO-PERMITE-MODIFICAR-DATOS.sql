/* ESTAS INSTRUCCIONES NOS PERMITE EVR 
USE BDPERSONAL

DECLARE @lcodigo varchar(10) = '084152'

/* 1 ero */
select maestro.codigo, maestro.codcargo, T_CargoPresupuestal.NOMBRE from maestro, T_CargoPresupuestal where  maestro.CODCARGO = T_CargoPresupuestal.CODIGO and maestro.CODIGO = @lcodigo

/* 2 do */
SELECT maestro.CODIGO, T_UnidadOrganica.NOMBRE from MAESTRO, T_UnidadOrganica where MAESTRO.CODUNIDADORG = T_UnidadOrganica.CODIGO and maestro.CODIGO = @lcodigo

/* 3 ero */
select maestro.codigo, T_TipoPlaza.NOMBRE from MAESTRO, T_TipoPlaza where MAESTRO.T_PLAZA = T_TipoPlaza.CODIGO and maestro.CODIGO = @lcodigo

/* 4 to */
select maestro.codigo, T_TipoSituacion.NOMBRE from MAESTRO, T_TipoSituacion where MAESTRO.SITUACION = T_TipoSituacion.CODIGO and maestro.CODIGO = @lcodigo

/* 5 to */
select maestro.codigo, maestro.nivelgrd, t_guardianiv.CODIGO from MAESTRO, T_GuardiaNiv where MAESTRO.NIVELGRD = T_GuardiaNiv.Codigo and maestro.CODIGO = @lcodigo

/* 6 to */
select maestro.codigo, T_Horarios.CODHOR from MAESTRO, T_Horarios where MAESTRO.CODHORA = T_Horarios.CODHOR and maestro.CODIGO = @lcodigo

/* 7 mo */
/* este sale vacio */
select maestro.codigo, T_CargoFuncional.NOMBRE from MAESTRO, T_CargoFuncional where MAESTRO.CODFUNCION = T_CargoFuncional.CODIGO and maestro.CODIGO = @lcodigo

/* 8 vo */
select * from t_grupo where t_grupo.CODIGO = (select T_CargoFuncional.CODgrp from MAESTRO, T_CargoFuncional where MAESTRO.CODFUNCION = T_CargoFuncional.CODIGO and maestro.CODIGO = @lcodigo)


 
SELECT * FROM RELOGDIGI  WHERE Codigo = 43055897 ORDER BY Fecha ASC



/* una vez identificado el problema , usar lo siguiente */      
/*       update MAESTRO set CODFUNCION = '0006' where CODIGO = '084616' */


/*select * from maestro where codigo = '054172'

update MAESTRO set DNI = '43055897' where codigo = '054172' */

/* select * from T_CargoPresupuestal -- 0316 */

/* select * from t_guardianiv  ** 3 */ 

/* TGN1 */

/* HABER */


/*  update MAESTRO set CODHORA  = 'GN1' where CODIGO = '054051' */

/* select * from MAESTRO where CODIGO = '054051' */

/*  update MAESTRO set HABER  = 5000 where CODIGO = '054051' */

/* update MAESTRO set HABER  = 8 where CODIGO = '054051' */ 

/* SOLUCION PROBLEMA */
/* UPDATE MAESTRO  SET CODCARGO = '0000', CODNIVEL = '0', HABER = 0, CODHORA = 'V', CODFUNCION = '0000', 
  NIVELGRD = 0, CADENA = 'NO DEFINIDO', HORAS = 8 WHERE DNI = '43055897' */
  use BDPERSONAl
  SELECT * FROM MAESTRO WHERE DNI = '45903557'
  select * from maestro where nombre like 'dueñas due%'


/*
USE BDPERSONAL

UPDATE  MAESTRO  SET   CODCARGO = CASE WHEN (MAESTRO.CODCARGO IS NULL) THEN '0000' ELSE CASE WHEN LEN(MAESTRO.CODCARGO)>4 THEN SUBSTRING(CODCARGO,2,4) ELSE  CODCARGO END END,
                       CODNIVEL = CASE WHEN (MAESTRO.CODNIVEL IS NULL) THEN '0' ELSE MAESTRO.CODNIVEL END,
                       CODHORA = CASE WHEN (MAESTRO.CODHORA IS NULL) THEN 'R' ELSE MAESTRO.CODHORA END,
                       CODFUNCION = CASE WHEN (MAESTRO.CODFUNCION IS NULL) THEN '0000' ELSE MAESTRO.CODFUNCION END,
                       NIVELGRD = CASE WHEN (MAESTRO.NIVELGRD IS NULL) THEN 0 ELSE MAESTRO.NIVELGRD END,
                       CADENA = CASE WHEN (MAESTRO.CADENA IS NULL) THEN 'NO DEFINIDO' ELSE MAESTRO.CADENA END,
                       HORAS = CASE WHEN (MAESTRO.HORAS IS NULL) THEN 8 ELSE MAESTRO.HORAS END,
                       HABER = CASE WHEN (MAESTRO.HABER IS NULL) THEN 0.000 ELSE MAESTRO.HABER END WHERE DNI = '45903557'
                       
                       
                       
   
   
   SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%HUAMAN GUERE%'  */
   
   
   
   /*  REVISAR */
   
   SELECT MAESTRO.CODIGO, MAESTRO.PLAZA, MAESTRO.NOMBRE, MAESTRO.HABER, MAESTRO.CODHORA, T_Horarios.HORING, T_Horarios.HORSAL, T_Grupo.CODIGO AS GRUPO, T_Grupo.NOMBRE AS GRUPODES, 
     MAESTRO.NIVELGRD, MAESTRO.CODUNIDADORG, T_UnidadOrganica.NOMBRE AS UNIDAD, MAESTRO.CODFUNCION, T_CargoFuncional.NOMBRE AS FUNCION, MAESTRO.HORAS, MAESTRO.CODCARGO, T_CargoPresupuestal.NOMBRE AS CARGO, 
      MAESTRO.SITUACION, T_TipoSituacion.NOMBRE AS SITUACIONDES, MAESTRO.DNI, MAESTRO.CADENA,.MAESTRO.DNI_RELOG, MAESTRO.CODNIVEL,T_GuardiaNiv.Nombre AS GUARDIADES
      
       FROM T_CargoFuncional WHERE MAESTRO.CODIGO LIKE '054172' INNER JOIN
        T_Grupo ON dbo.T_CargoFuncional.CODGRP = T_Grupo.CODIGO INNER JOIN T_TipoSituacion INNER JOIN T_TipoPlaza INNER JOIN T_UnidadOrganica INNER JOIN 
        MAESTRO ON dbo.T_UnidadOrganica.CODIGO = dbo.MAESTRO.CODUNIDADORG ON dbo.T_TipoPlaza.CODIGO = dbo.MAESTRO.T_PLAZA ON 
         T_TipoSituacion.CODIGO = MAESTRO.SITUACION INNER JOIN T_Horarios ON MAESTRO.CODHORA = T_Horarios.CODHOR ON T_CargoFuncional.CODIGO = MAESTRO.CODFUNCION INNER JOIN T_CargoPresupuestal ON MAESTRO.CODCARGO = T_CargoPresupuestal.CODIGO INNER JOIN T_GuardiaNiv ON MAESTRO.NIVELGRD = T_GuardiaNiv.Codigo
          WHERE MAESTRO.CODIGO LIKE '054172'
          
          
          
          
          
SALAZAR SANCHEZ NANCY IDELMA


UPDATE  MAESTRO  SET   CODCARGO = CASE WHEN (MAESTRO.CODCARGO IS NULL) THEN '0000' ELSE CASE WHEN LEN(MAESTRO.CODCARGO)>4 THEN SUBSTRING(CODCARGO,2,4) ELSE  CODCARGO END END,
                       CODNIVEL = CASE WHEN (MAESTRO.CODNIVEL IS NULL) THEN '0' ELSE MAESTRO.CODNIVEL END,
                       CODHORA = CASE WHEN (MAESTRO.CODHORA IS NULL) THEN 'R' WHEN ((MAESTRO.CODHORA) IN (SELECT CODHOR FROM T_Horarios)) 
                           THEN MAESTRO.CODHORA ELSE 'D' END,
                       CODFUNCION = CASE WHEN (MAESTRO.CODFUNCION IS NULL) THEN '0000' ELSE MAESTRO.CODFUNCION END,
                       NIVELGRD = CASE WHEN (MAESTRO.NIVELGRD IS NULL) THEN 0 ELSE MAESTRO.NIVELGRD END,
                       CADENA = CASE WHEN (MAESTRO.CADENA IS NULL) THEN 'NO DEFINIDO' ELSE MAESTRO.CADENA END,
                       HORAS = CASE WHEN (MAESTRO.HORAS IS NULL) THEN 8 ELSE MAESTRO.HORAS END,
                       HABER = CASE WHEN (MAESTRO.HABER IS NULL) THEN 0.000 ELSE MAESTRO.HABER END WHERE CODIGO = '084152'
                       

select maestro.codigo, T_Horarios.CODHOR from MAESTRO, T_Horarios where MAESTRO.CODHORA = T_Horarios.CODHOR and maestro.CODIGO = @lcodigo

SELECT CODHOR FROM T_Horarios ORDER BY CODHOR ASC

SELECT CODHOR FROM T_Horarios WHERE CODHOR = 'N'
SELECT CODHORA FROM MAESTRO  WHERE CODIGO = '084152'


SELECT CASE WHEN (MAESTRO.CODHORA IS NULL) THEN 'R' WHEN (MAESTRO.CODHORA = '') THEN 'D'   ELSE MAESTRO.CODHORA END 
FROM MAESTRO WHERE CODIGO = '084152'





  SELECT DNI, CODIGO, NOMBRE, UNIDAD_ORGANICA, CARGO_FUNCIONAL, SITUACION_LABORAL FROM V_MAESTRO
  WHERE CODIGO = '084152'


SELECT * FROM MAESTRO
  WHERE CODIGO = '084152'


  
  USE BDPERSONAL
  SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'SALAZAR SANCHEZ%'


SE          