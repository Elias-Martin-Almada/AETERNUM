--ATENCION ESTO ES DE CATALOGO WEB

CREATE procedure [dbo].[storedAltaArticulo]
@codigo varchar(50),
@nombre varchar(50),
@descripcion varchar(150),
@idMarca int,
@idCategoria int,
@imagenUrl varchar(1000),
@precio money
as
insert into ARTICULOS values (@codigo, @nombre, @descripcion, @idMarca, @idCategoria, @imagenUrl, @precio)

go

CREATE procedure [dbo].[storedListar] as
select Codigo, Nombre, A.Descripcion, ImagenUrl, Precio, M.Descripcion as Marca, C.Descripcion as Categoria, A.IdMarca, A.IdCategoria, A.Id 
from ARTICULOS A, MARCAS M, CATEGORIAS C 
where M.Id = A.IdMarca AND C.Id = A.IdCategoria

go

CREATE procedure [dbo].[storedModificarArticulo]
@codigo varchar(50),
@nombre varchar(50),
@descripcion varchar(150),
@idMarca int,
@idCategoria int,
@imagenUrl varchar(1000),
@precio money,
@id int
as 
update ARTICULOS set Codigo = @codigo, Nombre = @nombre, Descripcion = @descripcion, 
IdMarca = @idMarca, IdCategoria = @idCategoria, ImagenUrl = @imagenUrl, Precio = @precio 
where Id = @id


