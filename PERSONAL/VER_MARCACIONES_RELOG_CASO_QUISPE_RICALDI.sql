use BDPERSONAL
select * from maestro where CODIGO = '084346'

select * from RELOGDIGI where Codigo = 40054297 order by Fecha desc /* dni correcto */
select * from RELOGDIGI where Codigo = 40054297 order by Fecha asc

select * from RELOGDIGI where Codigo = 40054267 order by Fecha asc /* dni errado */

select * from RELOGDIGI where Codigo = 40054267 order by Fecha desc

/* update RELOGDIGI set Codigo = 40054297  where Codigo = 40054267 */
