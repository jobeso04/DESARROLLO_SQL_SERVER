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
  
  
  
  
  