--3--
CREATE TABLE Vehiculo(
ID_Vehiculo		INT IDENTITY(1,1),
Clave_Placa		VARCHAR(7),
Propietario		VARCHAR(4),
Modelo			VARCHAR(50),
Color			VARCHAR(50),
Marca			VARCHAR(25),
Año				INT,
CONSTRAINT PK_Vehiculo PRIMARY KEY (Clave_Placa),
CONSTRAINT FK_Vehiculo_Propietario FOREIGN KEY (Propietario) REFERENCES Cliente(Clave_Cliente)
)