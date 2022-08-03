--1--
CREATE TABLE AreaMecanico_Info(
ID_Area				INT IDENTITY(1,1),
Clave_Area			VARCHAR(40),
DescripcionTarea	VARCHAR(150),
CONSTRAINT	PK_AreaMecanico_Info PRIMARY KEY (Clave_Area)
)
