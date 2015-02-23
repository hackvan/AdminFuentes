-- Create table
create table DBSYA.SABD057T
(
  codempre VARCHAR2(5) not null,
  nomempre VARCHAR2(100),
  descempr VARCHAR2(50),
  logoempr VARCHAR2(100),
  nitempre VARCHAR2(20),
  estempre VARCHAR2(1),
  usucreac VARCHAR2(25) not null,
  feccreac DATE not null,
  usumodif VARCHAR2(25),
  fecmodif DATE
);
-- Add comments to the table 
comment on table DBSYA.SABD057T
  is 'EMPRESAS';
-- Add comments to the columns 
comment on column DBSYA.SABD057T.codempre
  is 'CODIGO DE LA EMPRESA';
comment on column DBSYA.SABD057T.nomempre
  is 'NOMBRE DE LA EMPRESA';
comment on column DBSYA.SABD057T.descempr
  is 'SIGLA DE LA EMPRESA';
comment on column DBSYA.SABD057T.logoempr
  is 'RUTA CON EL LOGO DE LA EMPRESA';
comment on column DBSYA.SABD057T.nitempre
  is 'NIT DE LA EMPRESA';
comment on column DBSYA.SABD057T.estempre
  is 'ESTADO DE LA EMPRESA';
comment on column DBSYA.SABD057T.usucreac
  is 'USUARIO DE CREACION DE  REGISTRO';
comment on column DBSYA.SABD057T.feccreac
  is 'FECHA DE CREACION DE REGISTRO';
comment on column DBSYA.SABD057T.usumodif
  is 'USUARIO DE ACTUALIZACION DE REGISTRO';
comment on column DBSYA.SABD057T.fecmodif
  is 'FECHA DE ACTUALIZACION DE REGISTRO';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DBSYA.SABD057T
  add constraint PK_EMPRESAS primary key (CODEMPRE)
  using index;
-- Create/Recreate check constraints 
alter table DBSYA.SABD057T
  add constraint CHK_ESTADO
  check (EstEmpre In ('A','I'));
