use SIGSALUD
declare @lcitem varchar(13) = '170438'
SELECT I.Item,P.Precio FROM Precio P  INNER JOIN Item I ON I.Item=P.Item 
WHERE fecha=(select max(fecha) from precio X where P.item=X.item group by item)  AND I.Item=@lcitem  AND Modulo='FARMACIA'

select * from STOCK where ITEM = @lcitem
 
 


