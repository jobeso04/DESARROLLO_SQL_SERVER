 /* AGREGACION DE CADENAS A PARTIR DE UNA HOJA EXCEL */
 /*  ARCHIVO EXCEL : NOMBRADOS_EXCEL -- CONVERTIRLO A TABLA : NOMBRADOEXCEL **/
 
 /* SELECT N, PLAZA, NOMBRES, CARGO, DNI, NIVEL, FINALIDAD + ' - ' + DESCRIPCION AS CADENA INTO CADENAEXCEL FROM NOMBRADOEXCEL
 /* VERIFICAR CADENAEXCEL */
 SELECT * FROM CADENAEXCEL
 SELECT cadena, DNI, PLAZA, NIVEL, nombres FROM CADENAEXCEL */
 
 
  
  /* CADENA DESTACADO EXCEL */
  
 SELECT NRO, PLAZA, NOMBRES, CARGO, DNI, NIVEL, FINALIDAD + ' - ' + DESCRIPCION AS CADENA INTO CADENADESTACADOEXCEL FROM DESTACADOEXCEL
 /* VERIFICAR CADENAEXCEL */
 SELECT * FROM CADENADESTACADOEXCEL
  