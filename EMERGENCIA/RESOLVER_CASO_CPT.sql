/* Copia de Seguridad CPT */
use SIGSALUD
SELECT *  FROM CPT
select * into CPT_BACKUP from dbo.CPT
truncate table CPT
insert into CPT(CodigoCPT, nombre)
  values ('0','*Ninguno')
insert into CPT(CodigoCPT, nombre)
select CodigoCPT, nombre FROM [SIGSALUD].[dbo].[CPT-FINAL]

SELECT *  FROM CPT where substring(nombre,1,1) = '*'

SELECT *  FROM CPT where substring(nombre,1,1) = '*'

select * from EMERGENCIA where EMERGENCIA_ID = '16009725'