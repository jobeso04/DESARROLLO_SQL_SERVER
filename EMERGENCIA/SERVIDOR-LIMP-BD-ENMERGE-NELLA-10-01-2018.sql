declare @lnmes int = 12
declare @lnanio int = 2017
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.1' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('R10','N48')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.2' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('I84','J31','S20')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.3' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('H10')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.4' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('A08')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.8' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('A04')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.0' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('A01','C90','H92','J04','J05','J06','J30','K05','K12','K80','L01','L08','N39','M94','O03','R07','S00','S30','S70','S91','T15')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX1) + '.9' WHERE MONTH(FECHA) = @lnmes AND YEAR(FECHA) =  @lnanio
AND CIEX1 IN ('A02','A05','A16','A41','B01','B02','B15','D25','E10','E11','E12','F00','F32','F41','G40','G43','G44','I21','I47','I63','J02','J03','J15','J18','J20','J21','J45','J84','J96','J98','K02','K35','K40','K42','K52','K59','L03','J04','L02','L03','L23','L30','L50','M17','M54','N18','N20','O02','O03','O21','O23','O42','O47','O90','P36','R50','R52','S00','S01','S05','S06','S51','S60','S61','S81','T00','T01','T15','T18','W54', 'W57', 'Z35')
