
/* PROCEDIMIENTO PARA VER DATALLE DE GASTOS DE CAJAS */ 

/* BUSQUEDA POR NOMBRES REFERENCIAL EJEMPLO : ZU�IGA COA  */

DECLARE @nombres varchar(200) = '%ZU�IGA COA%';
 SELECT * FROM PACIENTE WHERE NOMBRES LIKE @nombres;

/* UNA VEZ LOCALIZADO UBICAR NRO DE PACIENTE */
DECLARE @paciente varchar(60) = '2008058716';
 SELECT * FROM PAGOC WHERE PACIENTE = @paciente;
 select * from pagod where PAGOID = (SELECT pagoid FROM PAGOC WHERE PACIENTE = @paciente)
 select * from ITEM where ITEM = (select item from pagod where PAGOID = (SELECT pagoid FROM PAGOC WHERE PACIENTE = @paciente))
 
 
  