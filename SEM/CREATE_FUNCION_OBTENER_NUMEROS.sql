CREATE FUNCTION dbo.obtener_numeros
(
    @string VARCHAR(8000)
)
RETURNS VARCHAR(8000)
AS
BEGIN
    DECLARE @IncorrectCharLoc SMALLINT
    SET @IncorrectCharLoc = PATINDEX('%[^0-9]%', @string)
    WHILE @IncorrectCharLoc > 0
    BEGIN
        SET @string = STUFF(@string, @IncorrectCharLoc, 1, '')
        SET @IncorrectCharLoc = PATINDEX('%[^0-9]%', @string)
    END
    SET @string = @string
    RETURN @string
END

GO