USE SIGSALUD
GO

DECLARE @lmedico varchar(200) = 'MAYORGA'
DECLARE @lfecha varchar(12) = '20150804'
DECLARE @lturno varchar(1) = 'M'
declare @linicialesmedico varchar(3) 

select * from usuario_web where NOMBRES like '%' + @lmedico + '%'
select * FROM MEDICO WHERE NOMBRE like '%' + @lmedico + '%'
set @linicialesmedico = (select MEDICO FROM MEDICO WHERE NOMBRE like '%' + @lmedico + '%')
SELECT  * FROM V_ATENCIONES WHERE FECHA=@lfecha and TURNO=@lturno and MEDICO=@linicialesmedico  ORDER BY NUMERO ASC