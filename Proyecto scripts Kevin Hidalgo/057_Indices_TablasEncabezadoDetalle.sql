--INDICES 57--
--Justificacion: Se crearon varios indices en las tablas maestro/detalle esto con el fin de hacer una busqueda mas rapida 
--en cuanto a la manera de buscar la informacion de cada tabla para que no solo se necesite el ID de cada tabla para buscar la informacion

CREATE INDEX IDX_SolicitudEncabezado_Fecha ON SolicitudMecanico_Encabezado (FechaPedido)

CREATE INDEX IDX_SolicitudDetalle_Descripcion ON SolicitudMecanicoDetalle (Descripcion)

CREATE INDEX IDX_SurtidoEncabezado_FechaSurtido ON SurtirEncabezado (FechaSurtido)

CREATE INDEX IDX_SurtirDetalle_HerramientaDescripcion ON SurtirDetalle(Herramienta,Descripcion)

CREATE INDEX IDX_FacturaEncabezado_Fecha ON FacturaEncabezado(Fecha)

CREATE INDEX IDX_FacturaDetalle_ServicioDescripcion ON FacturaDetalle (Servicio,Descripcion)