--6--
CREATE TABLE ServicioACliente(
ID_Servicio			INT IDENTITY(1,1),
ClaveServicio		VARCHAR(4),
Cliente				VARCHAR(4),
PlacaVehiculo		VARCHAR(7),
Mecanico			VARCHAR(4),
IngresoVehiculo		DATE,
CONSTRAINT PK_ServicioACliente PRIMARY KEY (ClaveServicio),
CONSTRAINT FK_ServicioACliente_ClaveServicio FOREIGN KEY (ClaveServicio) REFERENCES ServicioDescripcionInfo(Clave_Servicio),
CONSTRAINT FK_ServicioACliente_Cliente FOREIGN KEY (Cliente) REFERENCES Cliente(Clave_Cliente),
CONSTRAINT FK_ServicioACliente_PlacaVehiculo FOREIGN KEY (PlacaVehiculo) REFERENCES Vehiculo(Clave_Placa),
CONSTRAINT FK_ServicioACliente_Mecanico FOREIGN KEY (Mecanico) REFERENCES Mecanico(Codigo_M)
)