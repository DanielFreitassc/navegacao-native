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


create trigger td_sinistro on sinistro for delete as

begin

insert into sinistro_log

select 

getdate(), suser_name(),cod_sinistro,placa,data_sinistro, hora_sinistro,local_sinistro,condutor from deleted
end
GO
