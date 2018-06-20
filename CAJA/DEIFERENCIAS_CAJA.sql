USE SIGSALUD

SELECT * FROM PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' ORDER BY NUMERO ASC

SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' AND ESTADO = '2'  GROUP BY USUARIO 

SELECT *  FROM PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' AND ESTADO = '2' ORDER BY NUMERO ASC
SELECT *  FROM V_PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' AND ESTADO = '2' ORDER BY NUMERO ASC


SELECT *  FROM PAGOC WHERE NUMERO = '001-1641051'
SELECT * FROM CONSULTORIO WHERE CONSULTORIO = '1011'

SELECT * FROM MEDICO WHERE MEDICO = 'MTA'

SELECT * FROM  PACIENTE WHERE PACIENTE = '2008062739'

SELECT * FROM PACIENTE WHERE NOMBRES LIKE 'ROCHA YAU%'
SELECT * FROM PACIENTE WHERE HISTORIA LIKE '%062944' ORDER BY HISTORIA ASC

SELECT * FROM ARCHIVO_MOV WHERE NOMBRES LIKE 'ROCHA%' ORDER BY NOMBRES ASC

SELECT * FROM CITA WHERE CITA_ID = '160071487 '
SELECT * FROM V_CITA WHERE CITA_ID = '160071487 '


SELECT * FROM PACIENTE WHERE PACIENTE = '2008062739'
SELECT * FROM PACIENTE WHERE HISTORIA LIKE '%0062944'

SELECT * FROM 

SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' AND ESTADO = '1'  GROUP BY USUARIO 

SELECT SUM(TOTAL) AS TT  FROM PAGOC WHERE NUMERO BETWEEN '001-1640995' AND '001-1641266' AND ESTADO = '1'  GROUP BY USUARIO 



SELECT TOTAL, * FROM PAGOC WHERE NUMERO = '001-1641051'
SELECT * FROM PAGOD WHERE PAGOID = '16069491'

 SELECT pagoid, totalc, totald, diferencia  FROM [SIGSALUD].[dbo].[TMP_PAGODIFE] ORDER BY diferencia desc
USE SIGSALUD
SELECT * FROM PAGOC WHERE PAGOID = '16069538'
SELECT * FROM PAGOD WHERE PAGOID = '16069538'

UPDATE PAGOC SET TOTAL = 10 WHERE PAGOID = '16069491'

update pagod set importe = importe - 5 where pagoid = (select pagoid from pagod where importe = (SELECT MAX(IMPORTE) as impor fROM pagod WHERE pagoid = '16069491') and pagoid = '16069491')
  and importe = (SELECT MAX(IMPORTE) as impor fROM pagod WHERE pagoid = '16069491')

select sum(importe) from PAGOD where pagoid = '16069491'


DELETE FROM PAGOD WHERE PAGOID = '16069538'
DELETE FROM PAGOC WHERE PAGOID = '11136782'


SELECT * FROM PAGOD WHERE PAGOID = '16069538'

INSERT INTO [SIGSALUD].[dbo].[PAGOD]([PAGOID], [ITEM], [CANTIDAD], [COSTO], [PRECIO], [IGV], [DESCUENTO], [IMPORTE], [IMPORTE2])
     VALUES (?lpagoid, '179999', '1', 0, 0, 0, 0, ?ltotalc, 0)
           (<PAGOID, char(8),>
           ,<ITEM, char(10),>
           ,<CANTIDAD, numeric(10,2),>
           ,<COSTO, numeric(18,6),>
           ,<PRECIO, numeric(18,3),>
           ,<IGV, numeric(19,2),>
           ,<DESCUENTO, numeric(19,2),>
           ,<IMPORTE, numeric(19,3),>
           ,<IMPORTE2, numeric(19,3),>)
GO



select * from ITEM where GRUPO_RECAUDACION = '17' order by ITEM asc


  declare @lfecha DATETIME = CONVERT(DATETIME,'10/05/2016',103)
  declare @lmodulo varchar(10) = 'CAJA'
  declare @lusuario varchar(20) = 'EARELLANO'
  Select PAGOID, FECHA, FECHA_REGISTRO, TIPO_DOCUMENTO, NUMERO, PACIENTE, NOMBRE, CAJA, TURNO, TOTAL
   from PAGOC WHERE FECHA = @lfecha and modulo = @lmodulo  and USUARIO = @lusuario  order by FECHA_REGISTRO asc   
