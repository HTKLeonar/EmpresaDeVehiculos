--13--
CREATE TABLE SolicitudMecanicoDetalle(
ID_Detalle			INT IDENTITY(1,1),
ID_Solicitud		INT,
Clave_Herramienta	VARCHAR(20),
Descripcion			VARCHAR(150),
Categoria			VARCHAR(100),
CONSTRAINT PK_SolicitudMecanicoDetalle PRIMARY KEY (ID_Detalle),
CONSTRAINT FK_SolicitudMecanicoDetalle_ID_Solicitud FOREIGN KEY (ID_Solicitud) REFERENCES SolicitudMecanico_Encabezado(ID_Solicitud),
CONSTRAINT FK_SolicitudMecanicoDetalle_Clave_Herramienta FOREIGN KEY (Clave_Herramienta) REFERENCES Herramienta(Clave_H),
CONSTRAINT FK_SolicitudMecanicoDetalle_Categoria FOREIGN KEY (Categoria) REFERENCES Clasificacion_Herramienta(Clave_CH)
)