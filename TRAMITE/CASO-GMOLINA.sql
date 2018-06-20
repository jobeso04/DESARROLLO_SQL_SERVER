use TRAMITE 
DECLARE @lctramite VARCHAR(20) = '17TD0590000'
  /* update dbo.EXPEDIENTE set actor_ATENCION = '0102', ACTOR_ACTUAL = '01'  where EXPEDIENTE = @lctramite  */
select * from dbo.EXPEDIENTE where EXPEDIENTE = @lctramite
select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE = @lctramite



/***************/

use TRAMITE 
DECLARE @lctramite1 VARCHAR(20) = '17TD0588201'
/* update dbo.EXPEDIENTE set actor_actual = '0102' where EXPEDIENTE = @lctramite */
select * from dbo.EXPEDIENTE where EXPEDIENTE = @lctramite1
select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE = @lctramite1



select * from v_EXPEDIENTE where EXPEDIENTE IN ('17TD0588201', '17TD0590000')

select * from EXPEDIENTE where EXPEDIENTE IN ('17TD0579100', '17TD0588201', '17TD0590000')

select * from EXPEDIENTE_detalle where EXPEDIENTE IN ('17TD0579100', '17TD0588201', '17TD0590000')

select * from EXPEDIENTE_detalle where EXPEDIENTE IN ('17TD0590000')



use tramite 
update dbo.EXPEDIENTE set actor_ATENCION = '0102', ACTOR_ACTUAL = '01'  where EXPEDIENTE = '17TD0590000'


17td-05882-01

select * from dbo.EXPEDIENTE where EXPEDIENTE IN ('17TD0579100', '17TD0590000')

select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE IN ('17TD0579100', '17TD0590000')


update dbo.EXPEDIENTE set  where EXPEDIENTE = @lctramite1

update dbo.EXPEDIENTE set actor_ATENCION = '01', ACTOR_ACTUAL = '0102'  where EXPEDIENTE = '17TD0590000'



update dbo.EXPEDIENTE set actor_actual = '0102' where EXPEDIENTE = @lctramite

select * from ACTOR where ACTOR in ('0102', '0403', '0109', '01')




17TD0588201


use TRAMITE 
DECLARE @lctramite1 VARCHAR(20) = '17TD0588201'
/* update dbo.EXPEDIENTE set actor_actual = '0102' where EXPEDIENTE = @lctramite */
select * from dbo.EXPEDIENTE where EXPEDIENTE = @lctramite1
select * from dbo.EXPEDIENTE_DETALLE where EXPEDIENTE = @lctramite1

