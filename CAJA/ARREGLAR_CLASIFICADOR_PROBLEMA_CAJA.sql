use SIGSALUD
select * from PAGOC where NUMERO = '002-1004864'


select * from ITEM where NOMBRE like '%electrocard%' order by ITEM  desc

select * from ITEM where CODCPT = '93000' order by ITEM desc

update ITEM set clasificador = '1.3.34.23' where item in ('63173', '606764')


select * from CLASIFICADOR where clasificador = '1.3.34.23'
v


INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
     VALUES ('1.3.34.23', 'ELECTROCARDIOGRAMA', '101', '125', '', '1')
update ITEM set clasificador = '1.3.34.23' where item in ('63173', '606764')     
     
     
           (<CLASIFICADOR, char(12),>
           ,<NOMBRE, varchar(50),>
           ,<CONTABLEC, char(10),>
           ,<CONTABLEA, char(10),>
           ,<ABREVIATURA, varchar(10),>
           ,<ACTIVO, numeric(3,0),>)
GO


