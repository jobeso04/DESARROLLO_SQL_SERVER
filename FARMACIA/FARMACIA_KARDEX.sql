declare @lfecha varchar(10) = '20150904'
declare @litem varchar(10) = '170108' 
declare @lalmacen varchar(1) = 'F'
declare @lnombre varchar(100) = 'Diclofenaco sódi. 75 mg x 3 ml iny'


select * from item where NOMBRE like '%' + @lnombre +  '%'
select * from stock where ITEM = @litem and ALMACEN = @lalmacen
select * from KARDEX where  ITEM = @litem and fecha > @lfecha AND ALMACEN = @lalmacen order by FECHA asc 
select distinct ITEM from KARDEX where fecha > @lfecha AND ALMACEN = @lalmacen order by item  asc

select * from stock where ALMACEN = @lalmacen order by ITEM asc
/* select * from stock where ALMACEN in ('F','A') and ITEM = @litem */

