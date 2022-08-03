--4--
CREATE TABLE ServicioDescripcionInfo(
ID_ServicioDesc		INT IDENTITY(1,1),
Clave_Servicio		VARCHAR(4),
Descripcion			VARCHAR(200),
TiempoAproxServicio	TIME,
CONSTRAINT PK_ServicioDescripcionInfo PRIMARY KEY (Clave_Servicio)
)