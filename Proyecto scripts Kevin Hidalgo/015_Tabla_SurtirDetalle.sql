--15--
CREATE TABLE SurtirDetalle(
NoDetalle		INT IDENTITY(1,1),
ID_Surtido		INT,
Herramienta		VARCHAR(20),
Descripcion		VARCHAR(150),
Marca			VARCHAR(30),
Precio			DECIMAL(10,2),
TotalPedir		INT,
CONSTRAINT PK_SurtirDetalle PRIMARY KEY (NoDetalle),
CONSTRAINT FK_SurtirDetalle_ID_Surtido FOREIGN KEY (ID_Surtido) REFERENCES SurtirEncabezado(NoSurtido),
CONSTRAINT FK_SurtirDetalle_Herramienta FOREIGN KEY (Herramienta) REFERENCES Herramienta(Clave_H),
CONSTRAINT FK_SurtirDetalle_Marca FOREIGN KEY (Marca) REFERENCES Marca_Info(Clave_Marca)
)