--12--
CREATE TABLE SolicitudMecanico_Encabezado(
ID_Solicitud	INT IDENTITY(1,1),
ClaveMecanico	VARCHAR(4),
FechaPedido		DATE,
AutorizaPedido	VARCHAR(4)
CONSTRAINT PK_SolicitudMecanicoEncabezado PRIMARY KEY (ID_Solicitud),
CONSTRAINT FK_SolicitudMecanico_Encabezado_ClaveMecanico FOREIGN KEY (ClaveMecanico) REFERENCES Mecanico(Codigo_M),
CONSTRAINT FK_SolicitudMecanico_Encabezado_AutorizaPedido FOREIGN KEY (AutorizaPedido) REFERENCES Gerente(Clave_G)
)