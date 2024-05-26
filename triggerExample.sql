-- Criação da tabela sinistro
create table sinistro_log (
    dt_exclusao datetime null,
    usuario_exclusao varchar(100) null,
    cod_sinistro int null,
    placa char(10) null,
    data_sinitro date null,
    hora_sinistro time null,
    local_sinistro varchar(100) null,
    condutor varchar(50) null
)
go

-- Criação da trigger que responde quando a tabela sinistro sofre um delete
create trigger td_sinistro on sinistro for delete as

begin

insert into sinistro_log

select 

getdate(), suser_name(),cod_sinistro,placa,data_sinistro, hora_sinistro,local_sinistro,condutor from deleted
end
GO

-- Inserindo valor para teste da trigger
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor)
VALUES (2, 'MZY-1232', '2024-05-26', '14:30:00', 'Rua principal', 'João Silva');

-- Fazendo um delete na tabela sinistro pra checar se ta salvando os logs
delete from sinistro 
where cod_sinistro = 1

-- Vendo se os logs foram salvos
select * from sinistro_log


