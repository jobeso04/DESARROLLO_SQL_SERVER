
/* SELECT Item.Grupo_Recaudacion,Grupo_Recaudacion.Nombre, Sum(Case when PagoC.Tipo_Pago IN ('C','E','S') Then round(PagoD.Importe,2) Else 0 End) AS Contado,
   Sum(round(PagoD.Descuento,2)) AS Exonerado, Sum(Case when PagoC.Tipo_Pago not in ('C','E','S') Then round(PagoD.Importe,2) Else 0 End) AS Otros
    from PagoC INNER join PagoD on PagoC.PagoId=PagoD.PagoId INNER JOIN Item ON PagoD.Item=Item.Item INNER JOIN 
    Grupo_Recaudacion ON Grupo_Recaudacion.Grupo_Recaudacion=Item.Grupo_Recaudacion 
     WHERE PagoC.fecha Between convert(datetime, '2015-08-25',101) AND convert(datetime, '2015-08-25',101) AND Estado>1  AND USUARIO = 'YVALLE' AND CAJA = '02' AND
     TURNO = 'GD' GROUP BY Item.Grupo_Recaudacion,Grupo_Recaudacion.Nombre */
   
/*SELECT  Sum(Case when PagoC.Tipo_Pago IN ('C','E','S') Then round(PagoD.Importe,2) Else 0 End) AS Contado,
   Sum(round(PagoD.Descuento,2)) AS Exonerado, Sum(Case when PagoC.Tipo_Pago not in ('C','E','S') Then round(PagoD.Importe,2) Else 0 End) AS Otros
    from PagoC INNER join PagoD on PagoC.PagoId=PagoD.PagoId INNER JOIN Item ON PagoD.Item=Item.Item INNER JOIN 
    Grupo_Recaudacion ON Grupo_Recaudacion.Grupo_Recaudacion=Item.Grupo_Recaudacion 
     WHERE PagoC.fecha Between convert(datetime, '2015-08-25',101) AND convert(datetime, '2015-08-25',101) AND Estado>1  AND USUARIO = 'YVALLE' AND CAJA = '02' AND
     TURNO = 'GD' AND Item.Grupo_Recaudacion = '04' */

DECLARE @litem varchar(50)= '15148055'

SELECT * FROM PAGOC WHERE PAGOID = @litem
SELECT * FROM PAGOD WHERE PAGOID = @litem ORDER BY ITEM ASC
SELECT SUM(IMPORTE) AS TOTAL FROM PAGOD WHERE PAGOID = @litem