-- Buscar proveedores cuyo nombre contiene 'Tech'
select * from proveedor
where upper(nombre_proveedor) like '%TECH%';
