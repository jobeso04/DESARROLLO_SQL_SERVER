
declare @lcinicio varchar(6) = '062015'
declare @lcfinal varchar(6) = '062015'
declare @lccodigo1 VARCHAR(6) = 'Z3591'
declare @lccodigo2 VARCHAR(6) = 'Z3592'
declare @lccodigo3 VARCHAR(6) = 'Z3593'

declare @lclabconf1 varchar(2) = '1'
declare @lclabconf2 varchar(2) = '2'
declare @lclabconf3 varchar(2) = '3'

/* PARA CODIGO 1 */
select CODIGO1, COUNT(CODIGO1)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO1 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF1 = '1' and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO1
UNION ALL  
  
/* PARA CODIGO 2 */
select CODIGO2, COUNT(CODIGO2)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO2 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF2= '1' and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO2
UNION ALL  

/* PARA CODIGO 3 */
select CODIGO3, COUNT(CODIGO3)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO3 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF3= '1' and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO3
UNION ALL  
  
/* PARA CODIGO 4 */
select CODIGO4, COUNT(CODIGO4)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO4 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF4= '1' and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO4
UNION ALL  
 

/* PARA CODIGO 5 */
select CODIGO5, COUNT(CODIGO5)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO5 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF5= '1'  and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO5
  UNION ALL  
    
/* PARA CODIGO 6 */
select CODIGO6, COUNT(CODIGO6)  as CUENTA from SIGSALUD.dbo.HIS 
  WHERE CODIGO6 IN (@lccodigo1, @lccodigo2, @lccodigo3) and LABCONF6= '1'  and PERIODO between @lcinicio and @lcfinal  GROUP BY CODIGO6
  