-- Questão 1
CREATE OR ALTER FUNCTION fn_conta_sinistro (@placa varchar(10)) RETURNS INT AS
BEGIN
DECLARE @resultado INT
SELECT @resultado = COUNT(cod_sinistro) from sinistro WHERE placa = @placa
RETURN @resultado
END

GO

select *,dbo.fn_conta_sinistro(placa) as qtde FROM carro


-- Questão 2

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

-- Questão 3

