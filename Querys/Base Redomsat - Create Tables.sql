CREATE TABLE PRODUCTO(
	ID_PRODUCTO INT NOT NULL PRIMARY KEY,
	P_NAME VARCHAR(20) NOT NULL,
	DESCRIPCION VARCHAR(20) NULL,
	OTHER_DETAILS VARCHAR(20) NULL,
	--ID_COMUNIDAD INT FOREIGN KEY REFERENCES COMUNIDAD(ID_COMUNIDAD),
);

CREATE TABLE COMUNIDAD(
	ID_COMUNIDAD INT NOT NULL PRIMARY KEY,
	C_NAME VARCHAR(20) NOT NULL,
	DEPARTAMENTO VARCHAR(20) NOT NULL,
	OTHER_DETAILS VARCHAR(20) NULL,
	CAP_INSTALADA VARCHAR(20) NULL,
	ID_PRODUCTO INT FOREIGN KEY REFERENCES PRODUCTO(ID_PRODUCTO),
);

create table USUARIO(
	ID_USER INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(15) NOT NULL,
	SECOND_NAME VARCHAR(15) NULL,
	LAST_NAME VARCHAR(15) NOT NULL,
	LAST_NAME2 VARCHAR(15) NULL,
	USER_ADDRESS VARCHAR(30) NOT NULL,
	ID_COMUNIDAD INT FOREIGN KEY REFERENCES COMUNIDAD(ID_COMUNIDAD)
);

CREATE TABLE TELEFONO(
	TEL_NUMBER INT NOT NULL PRIMARY KEY,
	CKTO VARCHAR(8) NULL,
	PAR_INTERNO INT  NULL,
	PAR_EXTERNO INT NULL,
	ID_USER INT FOREIGN KEY REFERENCES USUARIO(ID_USER),
);

CREATE TABLE CLASS(
	ID_CLASS INT NOT NULL PRIMARY KEY,
	DESCRIP VARCHAR(20) NULL,
	OTHER_DETAILS VARCHAR(20) NULL,
	TEL_NUMBER INT FOREIGN KEY REFERENCES TELEFONO(TEL_NUMBER),
);



CREATE TABLE MOVIMIENTO(
	FECHA_INGRESO DATE NOT NULL,
	OTHER_DETAILS VARCHAR(20) NOT NULL,
	FECHA_EGRESO DATE NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	ID_PRODUCTO INT FOREIGN KEY REFERENCES PRODUCTO(ID_PRODUCTO),
);

CREATE TABLE BRAND(
	FABRICANTE VARCHAR(20) NOT NULL,
	MODELO VARCHAR(20) NOT NULL,
	ID_PRODUCTO INT FOREIGN KEY REFERENCES PRODUCTO(ID_PRODUCTO),
);

CREATE TABLE DEVICE(
	CATEGORIA VARCHAR(20) NULL,
	ID_PRODUCTO INT FOREIGN KEY REFERENCES PRODUCTO(ID_PRODUCTO),
);

CREATE TABLE ALMACEN(
		ID_ALMACEN INT NOT NULL, 
		NOMBRE VARCHAR(20) NOT NULL, 
		DESCRIPCION VARCHAR(20) NULL
); 

CREATE TABLE EMPLEADO(
		ID_EMPLEADO INT NOT NULL PRIMARY KEY, 
		NOMBRE VARCHAR(20) NOT NULL, 
		SEGUNDO_NOMBRE VARCHAR(20) NULL, 
		APELLIDO VARCHAR(20) NOT NULL, 
		SEGUNDO_APELLIDO VARCHAR(20) NULL, 
		DIRECCION VARCHAR(20) NOT NULL,
		OTROS_DETALLES VARCHAR(20) NULL, 
		PUESTO VARCHAR(20) NOT NULL, 
		USUARIO_ID_USER INT FOREIGN KEY REFERENCES USUARIO(ID_USER)
);

CREATE TABLE JEFATURA(DESCRIPCION VARCHAR(20),
		OTROS_DETALLES VARCHAR(20) null, 
		EMPLEADO_ID INT FOREIGN KEY REFERENCES EMPLEADO(ID_EMPLEADO)
);


CREATE TABLE ADMINISTRADOR(DESCRIPCION VARCHAR(20),
		OTROS_DETALLES VARCHAR(20) null, 
		EMPLEADO_ID INT FOREIGN KEY REFERENCES EMPLEADO(ID_EMPLEADO)
);

CREATE TABLE SUPERVISOR(DESCRIPCION VARCHAR(20), 
		OTROS_DETALLES VARCHAR(20) null, 
		EMPLEADO_ID INT REFERENCES EMPLEADO(ID_EMPLEADO)
);


CREATE TABLE TECNICO(DESCRIPCION VARCHAR(20), 
		OTROS_DETALLES VARCHAR(20) null, 
		EMPLEADO_ID INT REFERENCES EMPLEADO(ID_EMPLEADO)
);