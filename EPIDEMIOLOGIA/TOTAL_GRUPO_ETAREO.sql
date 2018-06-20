
TRUNCATE TABLE TEVDFFINAL     
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD MENOR QUE 1 '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP1 GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO MENOR QUE 1--->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
  
  /* PARA SEGUNDA TABLA **/
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT ' ', '', ''
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD ENTRE 1 Y 4 '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP1Y4 GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO ENTRE 1 Y 4--->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
 

  /* PARA TERCERA TABLA **/
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT ' ', '', ''
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD ENTRE 5 Y 9 '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP5Y9 GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO ENTRE 5 Y 9--->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'


 /* PARA CUARTA TABLA  **/
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT ' ', '', ''
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD ENTRE 10 Y 19 '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP10Y19 GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO ENTRE 10 Y 19--->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'


/* QUINTA TABLA **/

 /* PARA CUARTA TABLA  **/
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT ' ', '', ''
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD ENTRE 20 Y 59 '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP20y59 GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO ENTRE 20 Y 59--->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'

/* SEXTA TABLA */

  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT ' ', '', ''
  INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '  DISTRITO  ', ' LOCALIDAD ', ' EDAD ENTRE 60 A MAS '
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT CDISTRITO, CLOCALIDAD, COUNT(EDAD) AS SUBTOTAL FROM TEVDFEBTEMP60ymas GROUP BY CDISTRITO, CLOCALIDAD ORDER BY CDISTRITO, CLOCALIDAD ASC       
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT 'SUB TOTAL DE GRUPO', ' --- ETAREO ENTRE 60 A MAS --->', CONVERT(VARCHAR, 8) 
INSERT INTO TEVDFFINAL (CDISTRITO, CLOCALIDAD, SUB_TOTAL)
  SELECT '----------------------------------------------------------', '------------------------------------', '----------------------------------------------'


 
SELECT * FROM TEVDFFINAL   


