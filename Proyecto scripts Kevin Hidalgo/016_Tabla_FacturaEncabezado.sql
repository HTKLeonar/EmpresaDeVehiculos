--16--
CREATE TABLE FacturaEncabezado(
NoFactura		INT IDENTITY(1,1),
ClienteF		VARCHAR(4),
Fecha			DATE,
Hora			TIME,
CONSTRAINT PK_FacturaEncabezado PRIMARY KEY(NoFactura),
CONSTRAINT FK_FacturaEncabezado_ClienteF FOREIGN KEY (ClienteF) REFERENCES Cliente(Clave_Cliente)
)

