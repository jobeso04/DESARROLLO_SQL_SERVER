update CONSULTORIO_PARAMETRO set item_c = '63381' where consultorio in (select consultorio from Consultorio where TIPO = 'C' and len(CONSULTORIO) = 4 and SUBSTRING(consultorio,1,1) = '1' and consultorio not in ('1019', '1027', '1028', '1029', '1031', '1032', '1033'))
update CONSULTORIO_PARAMETRO set item_c = '63501' where consultorio in (select consultorio from Consultorio where consultorio in ('5050', '5010', '5011'))
update item set nombre = 'CONSULTA ESTOMATOL�GICA ESPECIALIZADA (NI�OS)' WHERE ITEM IN ('63501', '607092') 

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63383' WHERE CONSULTORIO IN ('1019', '1027')  
UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63383' WHERE CONSULTORIO IN ('1028', '1029', '1031', '1032', '1033')

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63381' WHERE CONSULTORIO IN ('2024', '2025', '2026', '2027', '2028', '2029', '2030', '2094', '3031', '3032', '3033', '4041', '4043')

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63381' WHERE CONSULTORIO IN ('2021', '2022', '2023', '2024', '2025', '2026', '2027', '2028', '2029', '2030', '2094', '3031', '3032', '3033', '4041', '4043')

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63381' WHERE CONSULTORIO IN ('5060', '5061', '5080', '5090')

UPDATE CONSULTORIO_PARAMETRO SET ITEM_C = '63379' WHERE CONSULTORIO IN ('5070', '5071')




select * from CONSULTORIO_PARAMETRO ORDER BY ITEM_C ASC