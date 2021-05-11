
create database Instituto 
use Instituto
create table alumno(
id_alumno nvarchar (10),
nombre nvarchar (30),
apellido nvarchar (30),
celular nvarchar(10),
edad nvarchar(5),
direccion nvarchar (20),
barrrio nvarchar (30),
activo bit
constraint abcd primary key (id_alumno))


create table profesor(
id_profesor nvarchar (10),
nombre nvarchar (30),
apellido nvarchar (30),
celular nvarchar(10),
edad nvarchar(5),
direccion nvarchar (20),
barrrio nvarchar (30),
curso nvarchar (40),
activo bit 
constraint efgh primary key (id_profesor))

create table materia(
cod_materia nvarchar (10),
nom_materia nvarchar (30),
grado nvarchar (30),
activo bit 
constraint ijkl primary key (cod_materia))

-- procedimientos almacenados 
create procedure guardar_profesor
@id_profesor nvarchar (10),
@nombre nvarchar (30),
@apellido nvarchar (30),
@celular nvarchar(10),
@edad nvarchar(5),
@direccion nvarchar (20),
@barrrio nvarchar (30),
@curso nvarchar (40),
@activo bit 
as
insert into profesor(id_profesor, nombre, apellido, celular, edad,direccion, barrrio, curso, activo) 
values (@id_profesor,@nombre,@apellido,@celular,@edad,@direccion,@barrrio,@curso ,@activo)

create procedure Anular_profesor
@id_profesor nvarchar(10)
as
DELETE profesor where @id_profesor=@id_profesor

create procedure Consultar_profesor
@id_profesor nvarchar(10)
as
begin
select id_profesor,nombre,apellido,celular,edad,direccion,barrrio, curso 
from profesor
where id_profesor=@id_profesor
end

