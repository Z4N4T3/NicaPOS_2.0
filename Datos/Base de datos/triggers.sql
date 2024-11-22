-- trigers necesarios para la bd

use DB_NicaPOS

-- actualizar estado de cargo
create  trigger tr_actualizar_estado_cargo
on historial_cargo
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = id_empleado 
    FROM inserted;
	 UPDATE historial_cargo
    SET id_estado = 2
    WHERE id_empleado = @empleado 
      AND id_estado <> 2
      AND id <> (SELECT MAX(id) FROM historial_cargo WHERE id_empleado = @empleado);

	UPDATE historial_cargo
    SET id_estado = 1
    WHERE id = (SELECT MAX(id) FROM historial_cargo WHERE id_empleado = @empleado)
end



-- actualizar estado de telefono

create  trigger tr_actualizar_estado_empleado_tel
on empleado_telefono
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = id_empleado 
    FROM inserted;
	 UPDATE empleado_telefono
    SET estado = 2
    WHERE id_empleado = @empleado 
      AND estado <> 2
      AND id <> (SELECT MAX(id) FROM empleado_telefono WHERE id_empleado = @empleado);

	UPDATE empleado_telefono
    SET estado = 1
    WHERE id = (SELECT MAX(id) FROM empleado_telefono WHERE id_empleado = @empleado)
end


create  trigger tr_actualizar_estado_empleado_dir
on empleado_direccion
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = idEmpleado 
    FROM inserted;
	 UPDATE empleado_direccion
    SET estado = 2
    WHERE estado = @empleado 
      AND estado <> 2
      AND id <> (SELECT MAX(id) FROM empleado_telefono WHERE idEmpleado = @empleado);

	UPDATE empleado_direccion
    SET estado = 1
    WHERE id = (SELECT MAX(id) FROM empleado_telefono WHERE idEmpleado = @empleado)
end