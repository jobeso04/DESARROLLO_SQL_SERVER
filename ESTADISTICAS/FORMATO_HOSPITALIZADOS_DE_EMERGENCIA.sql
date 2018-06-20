USE SIGSALUD	
/* SELECT * FROM dbo.HOSPITALIZACION_EMERGENCIA */
/* SELECT servicio FROM dbo.HOSPITALIZACION_EMERGENCIA  group by SERVICIO  */

/* SELECT PROCEDENCIA, COUNT(procedencia)  FROM dbo.HOSPITALIZACION_EMERGENCIA  group by procedencia

delete from dbo.HOSPITALIZACION_EMERGENCIA where PROCEDENCIA <> 'EMERGENCIA' 
*/


/* MEDICINA */
DECLARE @lsexo VARCHAR(1) = 'M'
declare @lservicio varchar(100) = 'MEDICINA GENERAL' 

/*

SELECT COUNT(SERVICIO) AS MENOR_1_MES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 3
SELECT COUNT(SERVICIO) AS DE_1_A_11_MESES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 2 AND Edad BETWEEN 1 AND 11
SELECT COUNT(SERVICIO) AS DE_1_A_5_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 1 AND 5
SELECT COUNT(SERVICIO) AS DE_6_A_10_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 6 AND 10
SELECT COUNT(SERVICIO) AS DE_11_A_14_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 11 AND 14
SELECT COUNT(SERVICIO) AS DE_15_A_24_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 15 AND 24
SELECT COUNT(SERVICIO) AS DE_25_A_44_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 25 AND 44
SELECT COUNT(SERVICIO) AS DE_45_A_64_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 45 AND 64
SELECT COUNT(SERVICIO) AS DE_64_A_MAS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO = @lservicio AND TipoEdad = 1 AND Edad BETWEEN 65 AND 500


*/

/* GINECOLOGIA_OBSTETRICIA */
declare @lservicio1 varchar(100) = 'GINECOLOGIA' 
declare @lservicio2 varchar(100) = 'OBSTETRICIA' 
DECLARE @lsexo VARCHAR(1) = 'M'

/*
SELECT COUNT(SERVICIO) AS MENOR_1_MES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 3
SELECT COUNT(SERVICIO) AS DE_1_A_11_MESES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 2 AND Edad BETWEEN 1 AND 11
SELECT COUNT(SERVICIO) AS DE_1_A_5_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 1 AND 5
SELECT COUNT(SERVICIO) AS DE_6_A_10_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 6 AND 10
SELECT COUNT(SERVICIO) AS DE_11_A_14_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 11 AND 14
SELECT COUNT(SERVICIO) AS DE_15_A_24_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 15 AND 24
SELECT COUNT(SERVICIO) AS DE_25_A_44_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 25 AND 44
SELECT COUNT(SERVICIO) AS DE_45_A_64_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 45 AND 64
SELECT COUNT(SERVICIO) AS DE_64_A_MAS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio1, @lservicio2) AND TipoEdad = 1 AND Edad BETWEEN 65 AND 500
*/



/* CIRUGIA : CIRUGIA, CIRUGIA PLASTICA, OFTALMOLOGIA, UROLOGIA */
declare @lservicio3 varchar(100) = 'CIRUGIA GENERAL' 
declare @lservicio4 varchar(100) = 'CIRUGIA PLASTICA' 
declare @lservicio5 varchar(100) = 'OFTALMOLOGIA' 
declare @lservicio6 varchar(100) = 'UROLOGIA' 
DECLARE @lsexo VARCHAR(1) = 'M'



SELECT COUNT(SERVICIO) AS MENOR_1_MES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 3
SELECT COUNT(SERVICIO) AS DE_1_A_11_MESES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 2 AND Edad BETWEEN 1 AND 11
SELECT COUNT(SERVICIO) AS DE_1_A_5_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 1 AND 5
SELECT COUNT(SERVICIO) AS DE_6_A_10_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 6 AND 10
SELECT COUNT(SERVICIO) AS DE_11_A_14_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 11 AND 14
SELECT COUNT(SERVICIO) AS DE_15_A_24_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 15 AND 24
SELECT COUNT(SERVICIO) AS DE_25_A_44_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 25 AND 44
SELECT COUNT(SERVICIO) AS DE_45_A_64_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 45 AND 64
SELECT COUNT(SERVICIO) AS DE_64_A_MAS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio3, @lservicio4, @lservicio5, @lservicio6) AND TipoEdad = 1 AND Edad BETWEEN 65 AND 500
*/

/* TRAUMATOLOGIA  */
declare @lservicio7 varchar(100) = 'TRAUMATOLOGIA Y ORTOPEDIA' 
DECLARE @lsexo VARCHAR(1) = 'M'


SELECT COUNT(SERVICIO) AS MENOR_1_MES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 3
SELECT COUNT(SERVICIO) AS DE_1_A_11_MESES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 2 AND Edad BETWEEN 1 AND 11
SELECT COUNT(SERVICIO) AS DE_1_A_5_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 1 AND 5
SELECT COUNT(SERVICIO) AS DE_6_A_10_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 6 AND 10
SELECT COUNT(SERVICIO) AS DE_11_A_14_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 11 AND 14
SELECT COUNT(SERVICIO) AS DE_15_A_24_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 15 AND 24
SELECT COUNT(SERVICIO) AS DE_25_A_44_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 25 AND 44
SELECT COUNT(SERVICIO) AS DE_45_A_64_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 45 AND 64
SELECT COUNT(SERVICIO) AS DE_64_A_MAS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio7) AND TipoEdad = 1 AND Edad BETWEEN 65 AND 500



/* PEDIATRIA   */
declare @lservicio8 varchar(100) = 'PEDIATRIA GENERAL' 
declare @lservicio9 varchar(100) = 'NEONATOLOGIA' 
DECLARE @lsexo VARCHAR(1) = 'M'

SELECT COUNT(SERVICIO) AS MENOR_1_MES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 3
SELECT COUNT(SERVICIO) AS DE_1_A_11_MESES FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 2 AND Edad BETWEEN 1 AND 11
SELECT COUNT(SERVICIO) AS DE_1_A_5_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 1 AND 5
SELECT COUNT(SERVICIO) AS DE_6_A_10_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 6 AND 10
SELECT COUNT(SERVICIO) AS DE_11_A_14_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 11 AND 14
SELECT COUNT(SERVICIO) AS DE_15_A_24_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 15 AND 24
SELECT COUNT(SERVICIO) AS DE_25_A_44_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 25 AND 44
SELECT COUNT(SERVICIO) AS DE_45_A_64_A�OS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 45 AND 64
SELECT COUNT(SERVICIO) AS DE_64_A_MAS FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = @lsexo AND SERVICIO IN (@lservicio8, @lservicio9) AND TipoEdad = 1 AND Edad BETWEEN 65 AND 500



/*
SELECT * FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = 'F' AND SERVICIO = 'MEDICINA GENERAL' AND TipoEdad = 1

SELECT tipoedad, COUNT(tipoedad) AS  CONTAR FROM dbo.HOSPITALIZACION_EMERGENCIA WHERE SEXO = 'F' AND SERVICIO = 'MEDICINA GENERAL' group by TipoEdad

*/



