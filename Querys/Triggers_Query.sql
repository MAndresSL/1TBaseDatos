--CREATE TABLE LOG_USUARIO(
--	ID int, USUARIO varchar(40), 
--	MODIFICADO varchar(40), 
--	DESCRIPCION varchar(15)
--);

CREATE TABLE LOG_EMPLEADO(
	ID int, USUARIO varchar(40), 
	MODIFICADO varchar(40), 
	DESCRIPCION varchar(15)
);

CREATE TABLE LOG_TELEFONO(
	ID int, USUARIO varchar(40), 
	MODIFICADO varchar(40), 
	DESCRIPCION varchar(15)
);

CREATE TABLE LOG_CLASS(
	ID int, USUARIO varchar(40), 
	MODIFICADO varchar(40), 
	DESCRIPCION varchar(15)
);

CREATE TABLE LOG_COMUNIDAD(
	ID int, USUARIO varchar(40), 
	MODIFICADO varchar(40), 
	DESCRIPCION varchar(15)
);

CREATE TABLE LOG_PRODUCTO(
	ID int, USUARIO varchar(40), 
	MODIFICADO varchar(40), 
	DESCRIPCION varchar(15)
);

go

CREATE TRIGGER BITACORA_ARTICULOS_DEL ON USUARIO for delete
	as
	BEGIN
		INSERT INTO LOG_USUARIO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_USER, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;

	go
CREATE TRIGGER BITACORA_ARTICULOS_INS ON USUARIO for insert
	as
	BEGIN
		INSERT INTO LOG_USUARIO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_USER, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;

go

CREATE TRIGGER BITACORA_ARTICULOS_UPD ON USUARIO for update
	as
	BEGIN
		INSERT INTO LOG_USUARIO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_USER, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;

	go

/*
INSERT into USUARIO(
	ID_USER, FIRST_NAME, SECOND_NAME, LAST_NAME, LAST_NAME2, USER_ADDRESS, ID_COMUNIDAD) 
	values(123, 'Juan', 'Gabriel', 'Perez', 'Velasquez', 'Col. altos del trapiche', null);

	select * from usuario;

	select * from log_usuario;

UPDATE USUARIO
	SET FIRST_NAME = 'Jesus', USER_ADDRESS = 'col. kennedy'
	WHERE ID_USER= 123;

	select * from usuario;

	select * from log_usuario;



DELETE from USUARIO
	where ID_USER = 123;

	select * from usuario;

	select * from log_usuario;

*/

CREATE TRIGGER BITACORA_EMPLEADO_INS ON EMPLEADO for insert
	as
	BEGIN
		INSERT INTO LOG_EMPLEADO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_EMPLEADO, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go

CREATE TRIGGER BITACORA_EMPLEADO_DEL ON EMPLEADO for delete
	as
	BEGIN
		INSERT INTO LOG_EMPLEADO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_EMPLEADO, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_EMPLEADO_UPD ON EMPLEADO for update
	as
	BEGIN
		INSERT INTO LOG_EMPLEADO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_EMPLEADO, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_ALMACEN_INS ON ALMACEN for insert
	as
	BEGIN
		INSERT INTO LOG_ALMACEN(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_ALMACEN, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go


CREATE TRIGGER BITACORA_ALMACEN_DEL ON ALMACEN for delete
	as
	BEGIN
		INSERT INTO LOG_ALMACEN(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_ALMACEN, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_ALMACEN_UPD ON ALMACEN for update
	as
	BEGIN
		INSERT INTO LOG_ALMACEN(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_ALMACEN, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;
go


CREATE TRIGGER BITACORA_TELEFONO_INS ON TELEFONO for insert
	as
	BEGIN
		INSERT INTO LOG_TELEFONO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select TEL_NUMBER, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go

CREATE TRIGGER BITACORA_TELEFONO_DEL ON TELEFONO for delete
	as
	BEGIN
		INSERT INTO LOG_TELEFONO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select TEL_NUMBER, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_TELEFONO_UPD ON TELEFONO for update
	as
	BEGIN
		INSERT INTO LOG_TELEFONO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select TEL_NUMBER, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_CLASS_INS ON CLASS for insert
	as
	BEGIN
		INSERT INTO LOG_CLASS(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_CLASS, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go


CREATE TRIGGER BITACORA_CLASS_DEL ON CLASS for delete
	as
	BEGIN
		INSERT INTO LOG_CLASS(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_CLASS, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_CLASS_UPD ON CLASS for update
	as
	BEGIN
		INSERT INTO LOG_CLASS(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_CLASS, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_COMUNIDAD_INS ON COMUNIDAD for insert
	as
	BEGIN
		INSERT INTO LOG_COMUNIDAD(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_COMUNIDAD, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go

CREATE TRIGGER BITACORA_COMUNIDAD_DEL ON COMUNIDAD for delete
	as
	BEGIN
		INSERT INTO LOG_COMUNIDAD(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_COMUNIDAD, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_COMUNIDAD_UPD ON COMUNIDAD for update
	as
	BEGIN
		INSERT INTO LOG_COMUNIDAD(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_COMUNIDAD, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_PRODUCTO_INS ON PRODUCTO for insert
	as
	BEGIN
		INSERT INTO LOG_PRODUCTO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_PRODUCTO, GETDATE(), SUSER_NAME(), 'INSERT' 
		from inserted
	END;
	go

CREATE TRIGGER BITACORA_PRODUCTO_DEL ON PRODUCTO for delete
	as
	BEGIN
		INSERT INTO LOG_PRODUCTO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_PRODUCTO, GETDATE(), SUSER_NAME(), 'DELETE' 
		from deleted
	END;
	go

CREATE TRIGGER BITACORA_PRODUCTO_UPD ON PRODUCTO for update
	as
	BEGIN
		INSERT INTO LOG_PRODUCTO(
		ID, MODIFICADO, USUARIO, DESCRIPCION) 
		select ID_PRODUCTO, GETDATE(), SUSER_NAME(), 'UPDATE' 
		from deleted
	END;

