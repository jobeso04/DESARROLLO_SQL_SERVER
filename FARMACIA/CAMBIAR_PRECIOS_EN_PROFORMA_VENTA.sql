SELECT P.Item AS Item, I.Nombre,I.Presentacion, P.Precio,P.Costo,S.Stock FROM Precio P 
INNER JOIN Item I ON I.Item=P.Item INNER JOIN Stock S ON S.Item=P.Item 
WHERE p.fecha=(select max(fecha) from precio X where P.item=X.item group by item) 
and p.IDRECORD=(select max(X.IDRECORD) from precio X where X.Fecha=P.Fecha and P.item=X.item group by item)
 AND Almacen='F' AND Modulo='FARMACIA' and p.Item= '170472'
 
 SELECT * FROM PRECIO WHERE ITEM = '170472' group by item
 
 SELECT PRECIO FROM PRECIO WHERE ITEM = '170472' AND FECHA = CONVERT(DATETIME, '2015-05-18 00:00:00.000', 101)  group by item
 
 SELECT * FROM PRECIO WHERE ITEM = '170472' GROUP BY 
 
 select * from PRECIO order by IDRECORD desc