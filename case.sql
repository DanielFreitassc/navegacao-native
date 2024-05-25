DECLARE @case int
DECLARE @result varchar(10)

SELECT @case = 2

SELECT @result = CASE @case
    WHEN 1 THEN 'CASO 1'
    WHEN 2 THEN 'CASO 2'
    WHEN 3 THEN 'CASO 3'
    WHEN 4 THEN 'CASO 4'
    ELSE 'CASO DESCONHECIDO'
END

SELECT @result
