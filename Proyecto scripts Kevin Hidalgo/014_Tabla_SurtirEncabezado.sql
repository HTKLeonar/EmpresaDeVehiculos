--14--
CREATE TABLE SurtirEncabezado(
NoSurtido			INT IDENTITY(1,1),
Clave_Gerente		VARCHAR(4),
FechaSurtido		DATE,
Clave_Proveedor		VARCHAR(4)
CONSTRAINT PK_SurtirEncabezado PRIMARY KEY(NoSurtido),
CONSTRAINT FK_SurtirEncabezado_Clave_Gerente FOREIGN KEY (Clave_Gerente) REFERENCES Gerente(Clave_G),
CONSTRAINT FK_SurtirEncabezado_Clave_Proveedor	FOREIGN KEY (Clave_Proveedor) REFERENCES  Proveedor(Clave_P)
)
