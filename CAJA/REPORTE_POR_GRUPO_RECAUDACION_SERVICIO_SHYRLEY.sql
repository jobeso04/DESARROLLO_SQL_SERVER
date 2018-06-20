

SELECT PagoD.Item,Item.Nombre,Sum(PagoD.Cantidad) AS Cantidad,Item.Grupo_Recaudacion,Grupo_Recaudacion.Nombre AS Nombre_GR,Sum(PagoD.Importe) AS Importe 
FROM PagoC INNER JOIN PagoD
 ON PagoC.Pagoid=PagoD.Pagoid INNER JOIN Item ON Item.Item=PagoD.Item INNER JOIN Consultorio ON PagoC.Consultorio=Consultorio.Consultorio INNER JOIN Grupo_Recaudacion ON Item.Grupo_Recaudacion=Grupo_Recaudacion.Grupo_Recaudacion 
  WHERE PagoC.estado='2' and PagoC.Fecha between CONVERT(DATETIME, '2016-07-01', 101) and CONVERT(DATETIME, '2016-12-31', 101)
   AND PagoD.Item IN (SELECT ITEM FROM ITEM)  GROUP BY PagoD.Item,Item.Nombre,Grupo_Recaudacion.Nombre,Item.Grupo_Recaudacion
   
