USE SIGSALUD
SELECT * FROM V_ATENCIONC WHERE ID_CITA = '160052469'
UNION ALL
SELECT * FROM V_ATENCIONC WHERE ID_CITA = '160040941'
SELECT * FROM V_ATENCIOND WHERE ID_CITA = '160040941'

SELECT EDAD FROM PACIENTE WHERE PACIENTE = '2016260689'

-- HC
235486
235029
235070
235252
234890


ORTIZ BEXCERRA - DNI 47149078 - 1234


SELECT * FROM USUARIO_WEB WHERE NOMBRES LIKE 'CARDENAS%'



if(intval(substr(trim($imprimir['EDAD']),0,3))>0) {
                       $array = array('tipoedad' => 'A','edadact' => intval(substr(trim($imprimir['EDAD']),0,3)));
                   }else{
                       if(intval(substr(trim($imprimir['EDAD']),4,2))>0) {
                           $array = array('tipoedad' => 'M','edadact' => intval(substr(trim($imprimir['EDAD']),4,2)));
                       }else{
                          if(intval(substr(trim($imprimir['EDAD']),7,2))>0) { 
                            $array = array('tipoedad' => 'D','edadact' => intval(substr(trim($imprimir['EDAD']),7,2)));  
                          }
                          
DECLARE @L1 VARCHAR(13)
SET @L1 = (SELECT EDAD from v_atenciones where ID_CITA = '160052469')
SELECT @L1 AS  EDAD
SELECT convert(int, substring(@L1,1,3))
SELECT convert(int, substring(@L1,5,2))
SELECT convert(int, substring(@L1,8,2))

DECLARE @L1 VARCHAR(13)
SET @L1 = (SELECT EDAD from v_atenciones where ID_CITA = '160052469')
SELECT @L1 AS  EDAD
SELECT convert(int, substring(@L1,0,3))
SELECT convert(int, substring(@L1,4,2))
SELECT convert(int, substring(@L1,2,2))




select edad from v_atenciones WHERE  ID_CITA = '160052469'

SELECT EDAD from v_atenciones where ID_CITA = '160052469'

select dbo.FN_CALCULAR_EDAD(convert(varchar(10), FECHA_NACIMIENTO)) from PACIENTE  WHERE PACIENTE = '2016260689'
