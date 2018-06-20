select * from CITA where CITA_ID = '170045073'
select * from Consultorio  where NOMBRE like '%odonto%'

select * from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 order by NOMBRE asc

select * from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) not in ('4', '5')  order by NOMBRE asc

select * from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) not in ('4', '6') and  ITEM not in ('5020', '5030', '5040')  




select * from CONSULTORIO_PARAMETRO where consultorio in (select consultorio from consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) = '1')


order by consultorio asc

select * from CONSULTORIO_PARAMETRO  where consultorio = '5050'

select * from CONSULTORIO_PARAMETRO  where consultorio = '5050'

update CONSULTORIO_PARAMETRO set  ITEM_C = '63498' where consultorio = '5050'


select CONSULTORIO, item_c from CONSULTORIO_PARAMETRO WHERE ITEM_C NOT IN ('0', '')

select ACTIVO, CODCPT, *  from ITEM WHERE item = '50017'

select ACTIVO, CODCPT, *  from ITEM WHERE codcpt = 'd0160' and 

select ACTIVO, CODCPT, *  from ITEM WHERE codcpt = 'd0160'
update item set nombre = 'CONSULTA ESTOMATOLÓGICA ESPECIALIZADA (NIÑOS)' WHERE ITEM IN ('63501', '607092') 


modulo = 'caja' and ACTIVO = '5' and SUBSTRING(ITEM,1,1) = '5' 
select ACTIVO, CODCPT, *  from ITEM WHERE CODCPT = '99201' AND ACTIVO = '1'

select *  from ITEM WHERE ITEM IN (select item_c from CONSULTORIO_PARAMETRO WHERE ITEM_C NOT IN ('0', '')) ORDER BY NOMBRE ASC

select ITEM, Codcpt  from ITEM WHERE SUBSTRING(ITEM,1,1) = '5' AND ACTIVO = '5'
SELECT 


select * from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) = '1' and consultorio not in ('1019', '1027', '1028', '1029', '1031', '1032', '1033')

63381     


/* medician */
select * from CONSULTORIO_PARAMETRO where consultorio in (select consultorio from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) = '1' and consultorio not in ('1019', '1027', '1028', '1029', '1031', '1032', '1033'))
update CONSULTORIO_PARAMETRO set item_c = '63381' where consultorio in (select consultorio from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) = '1' and consultorio not in ('1019', '1027', '1028', '1029', '1031', '1032', '1033'))



/* odontologoa */
select * from CONSULTORIO_PARAMETRO where consultorio in (select consultorio from Consultorio where consultorio in ('5050', '5010', '5011'))
update CONSULTORIO_PARAMETRO set item_c = '63501' where consultorio in (select consultorio from Consultorio where consultorio in ('5050', '5010', '5011'))

/** SACAR LO QUE FALTA */

SELECT CONSULTORIO, ITEM_C FROM CONSULTORIO_PARAMETRO WHERE SUBSTRING(ITEM_C,1,1) = '5' ORDER BY ITEM_C ASC

SELECT DISTINCT CONSULTORIO FROM CONSULTORIO_PARAMETRO WHERE SUBSTRING(ITEM_C,1,1) = '5' ORDER BY CONSULTORIO ASC


SELECT * FROM CONSULTORIO WHERE CONSULTORIO IN (SELECT DISTINCT CONSULTORIO FROM CONSULTORIO_PARAMETRO WHERE SUBSTRING(ITEM_C,1,1) = '5') ORDER BY CONSULTORIO  ASC

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63381' WHERE CONSULTORIO IN ('2021', '2022', '2023', '2024', '2025', '2026', '2027', '2028', '2029', '2030', '2094', '3031', '3032', '3033', '4041', '4043')



SELECT * FROM ITEM WHERE CODCPT = '99215'

SELECT * FROM ITEM WHERE ITEM = '63381'
SELECT * FROM PRECIO WHERE ITEM = '63381'




5050  
5010  
5011  

