DECLARE @case1 INT,  @case2 INT, @case3 INT

SELECT @case1 = 1 , @case2 = 2, @case3 = 3

IF @case1 > @case2
	BEGIN
		PRINT 'PRIMEIRO if'
	END
ELSE IF @case1 < @case3
	BEGIN
		PRINT 'SEGUNDO if'
	END
ELSE
	BEGIN
		PRINT 'Nenhuma condição foi atendida'
	END