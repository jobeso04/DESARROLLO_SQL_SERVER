use SIGSALUD
/* select * from ATENCIONC order by FECHA desc
select * from ATENCIOND */

select * from ATENCIONC where id_cita = '160012900'
select * from ATENCIOND where ID_CITA = '160012900'

select * from atencionc where id_cita = (select ID_CITA from ATENCIOND where DX = 'G83.2' ) /* 06/01/2016 */

select * from atencionc where id_cita = (select ID_CITA from ATENCIOND where DX = 'H67*') /* 18/01/2016 */

select * from atencionc where id_cita = (select ID_CITA from ATENCIOND where DX = 'B08.5')  /* 26/01/2016 */
