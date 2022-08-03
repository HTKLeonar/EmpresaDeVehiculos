--TRIGGER 56--
--Justificacion: Se creo este trigger con el fin de que cada vez que se inserte informacion a la tabla herramienta dicha informacion
--guarde un registro del momento en el que se registro ademas de que herramienta fue ingresada, como lo es su clave, descripcion, precio y la fecha en 
--la que esta se adquirio.
CREATE TABLE HistorialHerramientas(
FechaRegistro		DATE,
DescripcionR		VARCHAR(50),
Clave_H				VARCHAR(20),
Descripcion			VARCHAR(150),
Precio				DECIMAL(10,2),
FechaAdquisicion	DATE
)

CREATE TRIGGER HerramientasITR
ON Herramienta FOR INSERT
AS
SET NOCOUNT ON
DECLARE @Clave_H VARCHAR(20)
DECLARE @DescripcionH VARCHAR(150)
DECLARE @Precio DECIMAL(10,2)
DECLARE @FechaAdquisicion DATE
SELECT @Clave_H = Clave_H FROM INSERTED
SELECT @DescripcionH = Descripcion FROM INSERTED
SELECT @Precio = Precio FROM INSERTED
SELECT @FechaAdquisicion = FechaAdquisicion FROM INSERTED

INSERT INTO HistorialHerramientas 
VALUES(GETDATE(),'Registro insertado',@Clave_H,@DescripcionH,@Precio,@FechaAdquisicion)

SELECT * FROM HistorialHerramientas