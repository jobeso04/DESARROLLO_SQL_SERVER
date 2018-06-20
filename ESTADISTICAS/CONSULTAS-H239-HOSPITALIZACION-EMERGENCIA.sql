  /* PARA CONSULTORIO */
    use sigsalud
  DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, '2017-03-01', 101)
  DECLARE @lcfecha2 DATETIME = CONVERT(DATETIME, '2017-03-30', 101)
  SELECT B.NOMBRE AS DESCRIPCION, COUNT(B.NOMBRE) AS CANTIDAD FROM ATENCIONC A  LEFT JOIN CONSULTORIO B ON A.CONSULTORIO = B.CONSULTORIO
  WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2   GROUP BY B.NOMBRE ORDER BY B.NOMBRE ASC
  
   
  
  /* PARA HOSPITALIZACION */
  use sigsalud
  DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, '2017-03-01', 101)
  DECLARE @lcfecha2 DATETIME = CONVERT(DATETIME, '2017-03-30', 101)
  
  SELECT Expr2 AS SERVICIO, COUNT(Expr2) AS CANTIDAD FROM V_HOSPITALIZACION WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 
  GROUP BY Expr2 ORDER BY Expr2
  
   
  
  

   DECLARE @lfechainiciover datetime = CONVERT(DATETIME, '2017-04-01', 101)
   DECLARE @lfechafinver datetime = CONVERT(DATETIME, '2017-04-30', 101)
   
   select convert(date, max(fecha1)) as ultimo_hos from HOSPITALIZACION  where FECHA1 BETWEEN @lfechainiciover   AND @lfechafinver
   
   
   
   select convert(date, max(fecha1)) as ultimo_hos from HOSPITALIZACION  where FECHA1 BETWEEN @lfechainiciover   AND @lfechafinver
   
   
   
ENDTEXT
lejecutagrabar = sqlexec(gconecta, lver_hospi, "tfec3") 
SELECT tfec3
lultimafechahospi = ALLTRIM(DTOC(tfec3.ultimo_hos))
