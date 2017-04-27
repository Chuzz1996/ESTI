/*Creacion de tablas*/
CREATE TABLE Articulo (
    id_articulo number  NOT NULL,
    name_articulo varchar2(200)  NOT NULL,
    typeA varchar2(200),
    performer varchar2(200),
    area varchar2(200)  NOT NULL,
    pages number  NOT NULL,
    Institucion_id number  NOT NULL,
    Revista_id number  NOT NULL
);

CREATE TABLE Educacion (
    id_educacion number  NOT NULL,
    YearE varchar2(50),
    StudyLevel varchar2(50),
    Graduates number ,
    Carrer varchar2(100),
    Institucion_id number  NOT NULL
);

CREATE TABLE Institucion (
    id_Institucion number  NOT NULL,
    name_Institucion varchar2(500)  NOT NULL,
    TypeI varchar2(500),
    Muncipio_id Integer  NOT NULL
);

CREATE TABLE Municipio (
    id_municipio Integer  NOT NULL,
    name_Municipio varchar2(500)  NOT NULL,
    Leng Integer,
    Lat Integer,
    Population Integer
);

CREATE TABLE Revista (
    id_revista number  NOT NULL,
    name_revista varchar2(200)  NOT NULL,
    category_revista varchar2(200)
);

/*Llaves primarias*/
ALTER TABLE Revista ADD PRIMARY KEY (id_revista);
ALTER TABLE Articulo ADD PRIMARY KEY (id_articulo);
ALTER TABLE Institucion ADD PRIMARY KEY (id_Institucion);
ALTER TABLE Municipio ADD PRIMARY KEY (id_municipio);
ALTER TABLE Educacion ADD PRIMARY KEY (id_educacion);

/*Lleves foraneas*/
ALTER TABLE Articulo add CONSTRAINT FK_articulo FOREIGN KEY (Revista_id) REFERENCES Revista(id_revista);
ALTER TABLE Articulo add CONSTRAINT FK_instucion FOREIGN KEY (Institucion_id) REFERENCES Institucion(id_Institucion);
ALTER TABLE Institucion add CONSTRAINT FK_municipio FOREIGN KEY (Muncipio_id) REFERENCES Municipio(id_municipio);
ALTER TABLE Educacion add CONSTRAINT FK_Edu_Insti FOREIGN KEY (Institucion_id) REFERENCES Institucion(id_Institucion);

/*Eliminar tablas*/
drop table Articulo;
drop table Educacion;
drop table institucion;
drop table revista;
drop table Municipio;