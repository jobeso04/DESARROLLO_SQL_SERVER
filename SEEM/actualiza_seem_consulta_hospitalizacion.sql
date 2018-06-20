select * from CONSULTORIO_HOSPITALIZA

/* ALTER TABLE CONSULTORIO_HOSPITALIZA add seemups varchar(50) */

select * from UPS order by desupsesp asc
select * from CONSULTORIO_HOSPITALIZA where seemups is null 

   select seemups from CONSULTORIO_HOSPITALIZA 

select * from CONSULTORIO_HOSPITALIZA order by NOMBRE asc
select * from CONSULTORIO_HOSPITALIZA where seemups is null 


ALTER TABLE CONSULTORIO_HOSPITALIZA add seemups varchar(50)
update CONSULTORIO_HOSPITALIZA set seemups = '250602' where CONSULTORIO = '1013'
update CONSULTORIO_HOSPITALIZA set seemups = '240100' where CONSULTORIO = '2021'

update CONSULTORIO_HOSPITALIZA set seemups = '240700' where CONSULTORIO = '2094'
update CONSULTORIO_HOSPITALIZA set seemups = '240800' where CONSULTORIO = '2026'

update CONSULTORIO_HOSPITALIZA set seemups = '250605' where CONSULTORIO = '1016'
update CONSULTORIO_HOSPITALIZA set seemups = '250604' where CONSULTORIO = '1015'


update CONSULTORIO_HOSPITALIZA set seemups = '240700' where CONSULTORIO = '2094'
update CONSULTORIO_HOSPITALIZA set seemups = '240800' where CONSULTORIO = '2026'

update CONSULTORIO_HOSPITALIZA set seemups = '241500' where CONSULTORIO = '4042' /* ginecologia */
update CONSULTORIO_HOSPITALIZA set seemups = '241800' where CONSULTORIO = '1011' /* medicina general */

update CONSULTORIO_HOSPITALIZA set seemups = '243200' where CONSULTORIO = '3031' /* neonatologioa */
update CONSULTORIO_HOSPITALIZA set seemups = '250601' where CONSULTORIO = '1012' /* neumologia */

update CONSULTORIO_HOSPITALIZA set seemups = '250603' where CONSULTORIO = '1014' /* neurologia  */
update CONSULTORIO_HOSPITALIZA set seemups = '241600' where CONSULTORIO = '4041' /* obstetricia */

update CONSULTORIO_HOSPITALIZA set seemups = '230104' where CONSULTORIO = '2024' /* oftalmologia  */
update CONSULTORIO_HOSPITALIZA set seemups = '241100' where CONSULTORIO = '2023' /* otorrinolaringologia */


update CONSULTORIO_HOSPITALIZA set seemups = '242500' where CONSULTORIO = '3032' /* pediatria  general */
update CONSULTORIO_HOSPITALIZA set seemups = '230107' where CONSULTORIO = '1018' /* psiquiatria */

update CONSULTORIO_HOSPITALIZA set seemups = '241200' where CONSULTORIO = '2022' /* traumatolgia y ortopedia */
update CONSULTORIO_HOSPITALIZA set seemups = '241300' where CONSULTORIO = '2025' /* urologia */

