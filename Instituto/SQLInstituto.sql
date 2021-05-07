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


USE [Instituto]
 
create proc Guardar_alumno
@id_alumno nvarchar(10),
@nombre nvarchar(30),
@apellido nvarchar(30),
@celular nvarchar(10),
@edad nvarchar(5),
@direccion nvarchar(20),
@barrrio nvarchar(30),
@activo bit
as
insert into alumno(id_alumno,nombre,apellido,celular,edad,direccion,barrrio,activo)
values (@id_alumno,@nombre,@apellido,@celular,@edad,@direccion,@barrrio,@activo)

create procedure Anular_alumno
@id_alumno nvarchar(10)
as
DELETE alumno where @id_alumno=@id_alumno

create proc Consultar_alumno
@id_alumno nvarchar(10)
as
begin
select id_alumno,nombre,apellido,celular,edad,direccion,barrrio,activo
from alumno
where id_alumno=@id_alumno
end