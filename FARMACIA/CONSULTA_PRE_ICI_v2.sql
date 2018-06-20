use SIGSALUD
select b.clase, b.NOMBRE, a.ITEM, interfase2 AS SISMED, UPPER(a.NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION, GETDATE() AS DFECHA_INICIO_PROCESO 
from ITEM a 
left join CLASE b on a.CLASE = b.CLASE where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
      '170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
      '170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007', '171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
      '171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
      '171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
      '171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
      '171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
      '171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
      '171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(a.NOMBRE,1,3) in ('don', 'coe', 'pel') 
       
select * from CLASE 



select 'MEDICAMENTOS' AS TIPO_CLASE, ITEM, interfase2 AS SISMED, UPPER(NOMBRE) as nombre, UPPER(PRESENTACION) AS PRESENTACION, GETDATE() AS DFECHA_INICIO_PROCESO from ITEM where  SUBSTRING(item,1,2) = '17' and ITEM not in ('179999', '170797', '170274', '170313', '170121', '170129', '170223', '170785', '170786', '170826', '170855', '170870',
      '170871', '170868', '170873', '170874', '170878', '170879', '170883', '170885', '170886', '170887', '170888', '170889', '170931', '170932', '170933', '170934', '170935', '170938', '170940', '170944',
      '170959', '170960', '170966', '170967', '170980', '170981', '170982', '170983', '170984', '170988', '170986', '170989', '170992', '171002', '171005', '171006', '171007', '171009', '171012', '171015', '171016', '171017', '171018', '171020', '171020', '171020', '171022', '171023', '171025', '171026', '171027', '171028', '171029', '171030', 
      '171032', '171033', '171033', '171031', '171034', '171035', '171037', '171038', '171039', '171040', '171041', '171043', '171046', '171047', '171048', '171058', '171059',
      '171060', '171062', '171069', '171073', '171074', '171075', '171076', '171077', '171078', '171079', '171092', '171093', '171096', '171099', '171100', '171101', '171103',
      '171104', '171106', '171111', '171116', '171118', '171121', '171122', '171125', '171126', '171127', '171128', '171130', '171131', '171132', '171133', '171134', '171136',
      '171137', '171138', '171140', '171146', '171147', '171148', '171149', '171152', '171153', '171157', '171158', '171159', '171161', '171160', '171162', '171163', '171164',
      '171165', '171166', '171167', '171168', '171169', '171170', '171171', '171172', '171173', '171174', '171175', '171176', '171177', '171183', '171184', '171185', '171186',
      '171187', '171188', '171190', '171192', '171197', '171231', '171233', '171237') and not substring(NOMBRE,1,3) in ('don', 'coe', 'pel') 
       and clase = 'A' 