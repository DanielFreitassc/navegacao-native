CREATE OR ALTER FUNCTION fn_conta_sinistro (@placa varchar(10)) RETURNS INT AS
BEGIN
DECLARE @resultado INT
SELECT @resultado = COUNT(cod_sinistro) from sinistro WHERE placa = @placa
RETURN @resultado
END

GO

select *,dbo.fn_conta_sinistro(placa) as qtde FROM carro


CREATE TABLE sinistro_log(
dt_insercao DATETIME,
usuario_insercao VARCHAR(100),
cod_sinistro INT,
placa VARCHAR(10),
data_sinistro DATE,
hora_sinistro TIME,
local_sinistro VARCHAR(100),
condutor VARCHAR(50)
)

GO

CREATE OR ALTER TRIGGER tr_sinistro ON sinistro FOR insert AS

BEGIN
INSERT INTO sinistro_log
SELECT GETDATE(), SUSER_NAME(), cod_sinistro, placa,data_sinistro,hora_sinistro,local_sinistro,condutor 
FROM inserted
END

GO

INSERT INTO sinistro(cod_sinistro,placa,data_sinistro,hora_sinistro,local_sinistro,condutor)
VALUES (922222229,'ALD3834','2022-10-30','11:00:00.0000000','CRICIUMA','ARAUJO')    

GO

SELECT * FROM sinistro_log


CREATE PROC soma(@valor1 INT, @valor2 INT, @valor3 INT OUTPUT) AS

BEGIN
SELECT @valor3 = @valor1 + @valor2
END


DECLARE @resultado INT

EXEC soma 2,2,@resultado OUTPUT 
SELECT @resultado AS Conta


CREATE OR ALTER FUNCTION fn_quantidade_apolices (@cod_cliente INT) RETURNS INT AS

BEGIN
	DECLARE @resultado INT
	SELECT @resultado = COUNT(cod_cliente) FROM apolice WHERE cod_cliente = @cod_cliente
	RETURN @resultado
END
GO

SELECT dbo.fn_quantidade_apolices(2) AS Qtde_apolices

CREATE OR ALTER PROC pr_sinistro (@placa varchar(10), @sinistro INT OUTPUT) AS
BEGIN

SELECT @sinistro = count(placa) FROM sinistro WHERE placa = @placa
SELECT @sinistro AS qtde
END

DECLARE @resultado INT
EXEC dbo.pr_sinistro 'ALD3834',@resultado output 


CREATE FUNCTION fn_idade(@data datetime) returns int as

BEGIN
DECLARE @idade int
SELECT @idade = FLOOR(datediff(day,@data,GETDATE())/365.25)
return @idade
END

SELECT dbo.fn_idade('07/02/2003') AS idade;

