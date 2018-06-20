use sigsalud
select * from PRECIO where substring(item,1,1) = '6'  order by ITEM  asc

DROP TABLE TARIFARIO_MARZO_2017

/* para ejecuTar en el servidor - consulta tarifa */

select a.ITEM, a.CODCPT, a.NOMBRE, b.PRECIOA, b.PRECIOB, b.PRECIOC, b.PRECIOD, b.PRECIOE AS PRECIO_SIS, b.PRECIOG, b.PRECIOH AS PRECIO_SOAT, b.PRECIOI, b.PRECIOJ, b.PRECIOK, b.SYSUPDATE, A.ACTIVO
  into TARIFARIO_MARZO_2017 from item a, precio b 
     where a.item = b.item and substring(a.item,1,1) = '6' AND a.ACTIVO IN ('1', '7')  order by CODCPT  asc

/**********************/

SELECT * FROM TARIFARIO_MARZO_2017


/* para vver duplicados */
SELECT CODCPT, count(codcpt) AS REPETIDO  FROM TARIFARIO_MARZO_2017 GROUP BY CODCPT HAVING count(codcpt) > 1

/* VER CONTENIDO PARA DUPLICADOS */
DROP TABLE TARIFARIO_MARZO_2017

