/* NO APARECE LA EQUIVOCACION, PORQUE S EEQUIVOCARON EN ENVIAR DE UNA UNIDAD A OTRA UNIDAD */


use TRAMITE 
DECLARE @lctramite VARCHAR(20) = '17TD0590000'
select * from dbo.EXPEDIENTE where EXPEDIENTE = @lctramite
select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE = @lctramite




select * from dbo.EXPEDIENTE where EXPEDIENTE = '17TD0045000'
UNION ALL
Select * from dbo.EXPEDIENTE where EXPEDIENTE = '17TD0088700'


use tramite
select * from dbo.EXPEDIENTE where EXPEDIENTE = '17TD0167700'

select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE = '17TD0167700'



select * from dbo.EXPEDIENTE where EXPEDIENTE = '17TD0045000'

UPDATE dbo.EXPEDIENTE SET ACTOR_ACTUAL = '01' where EXPEDIENTE between '17TD0167700'  and '17TD0167700'




select * from dbo.USUARIO where NOMBRE like '%granizo%'

