DECLARE @indice INTEGER;
DECLARE @anho INTEGER;
DECLARE @anho_hoy VARCHAR(4);
DECLARE @codigo VARCHAR(9);
SET @anho_hoy = SUBSTRING(CONVERT(CHAR,YEAR(GETDATE())),3,2);
SELECT @indice = ISNULL(SUBSTRING(MAX(ID_PROCE_WEB),3,8),0) FROM EMERGENCIA_PROC_WEB WHERE ID_PROCE_WEB like @anho_hoy+'%';
SELECT @anho = SUBSTRING(MAX(ID_PROCE_WEB),1,2) FROM EMERGENCIA_PROC_WEB;
if(@anho=@anho_hoy)
	SET @indice = @indice + 1;
else
	SET @indice = 1;
SET @codigo = @anho_hoy + RIGHT('000000' + Ltrim(Rtrim(@indice)),6)	

select @codigo as ncodigo