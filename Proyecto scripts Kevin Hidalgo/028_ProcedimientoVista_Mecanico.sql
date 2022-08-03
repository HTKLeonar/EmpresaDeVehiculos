--Vista 28 --
CREATE VIEW MecanicoVista
AS
SELECT M.Codigo_M AS 'Código del Mecanico',
       (M.Nombre + ' ' + M.Apellido) AS 'Nombre Completo',
	   M.Sueldo AS 'Salario',
	   AM.Clave_Area AS 'Área a la que pertenence',
	   AM.DescripcionTarea AS 'Tarea que realiza'
FROM Mecanico M
INNER JOIN AreaMecanico_Info AM ON M.AreaMecanico = AM.Clave_Area

SELECT * FROM MecanicoVista