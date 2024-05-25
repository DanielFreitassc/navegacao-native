-- Questão 1
-- Crie uma função escalar que retorne o número de sinistro (valor inteiro) vinculados a uma placa de carro (usar campo placa como parâmetro de função). Depois de criada a função, evidencie seu pleno funcionamento escrevendo um comadno de SELECT na tabela carro, adicionando ao final do select list a chamada da função criada.


create function fn_conta_sinistro(@placa varchar(10)) returns int
as
begin
declare @resultado int 
select @resultado = count(cod_sinistro) from sinistro where placa = @placa
return @resultado
end

go

select *,dbo.fn_conta_sinistro(placa) as qtde_sinistro
from carro

go