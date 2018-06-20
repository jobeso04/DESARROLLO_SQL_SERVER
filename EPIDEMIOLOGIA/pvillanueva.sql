DECLARE @V_CODIGO VARCHAR(20) = '90744';
/*
SELECT *  FROM [SIGSALUD].[dbo].[HIS]  WHERE ANIO='2015' AND MES IN('2')
  AND (CODIGO1=@V_CODIGO OR CODIGO2=@V_CODIGO OR CODIGO3=@V_CODIGO OR CODIGO4=@V_CODIGO OR CODIGO5=@V_CODIGO OR CODIGO6=@V_CODIGO) 
  and (DIAGNOST1 IN ('D','P','R') OR DIAGNOST2 IN ('D','P','R') OR DIAGNOST3 IN ('D','P','R') OR DIAGNOST4 IN ('D','P','R') OR DIAGNOST5 IN ('D','P','R')  OR DIAGNOST6 IN ('D','P','R'))
*/


-----busca por el primer registro del sistema------
DECLARE @lnanio int = 2017
declare @lnmes int = 9
declare @lcciex varchar(10) = 'A0'
SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita,CODIGO1,DES_COD1,'D1'
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO1 LIKE @lcciex + '%' and DIAGNOST1 in ('d','p','r') )
UNION ALL
SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita,CODIGO2,DES_COD2,'D2'
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO2 LIKE @lcciex + '%' and DIAGNOST2 in ('d','p','r') )
 UNION ALL
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO3,DES_COD3,'D3'
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO3 LIKE @lcciex + '%' and DIAGNOST3 in ('d','p','r') )
  union all
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO4,DES_COD4,'D4'
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO4 LIKE @lcciex + '%' and DIAGNOST4 in ('d','p','r') )
  union all
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO5,DES_COD5,'D5'
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO5 LIKE @lcciex + '%'and DIAGNOST5 in ('d','p','r') )
  UNION ALL
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO6,DES_COD6,'D6'
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=@lnanio AND MONTH(FECHA) IN (@lnmes) AND CODIGO6 LIKE @lcciex + '%' and DIAGNOST6 in ('d','p','r') )
