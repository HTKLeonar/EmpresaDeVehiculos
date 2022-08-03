--17--
CREATE TABLE FacturaDetalle(
NoDetalle		INT IDENTITY(1,1),
ID_Factura		INT,
Servicio		VARCHAR(4),
Descripcion		VARCHAR(200),
PrecioServicio	DECIMAL(10,2),
CONSTRAINT PK_FacturaDetalle PRIMARY KEY (NoDetalle),
CONSTRAINT FK_FacturaDetalle_ID_Factura	FOREIGN KEY (ID_Factura) REFERENCES FacturaEncabezado(NoFactura),
CONSTRAINT FK_FacturaDetalle_Servicio FOREIGN KEY (Servicio) REFERENCES ServicioACliente(ClaveServicio)
)