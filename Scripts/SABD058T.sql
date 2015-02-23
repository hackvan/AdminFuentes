-- Create table
create table SABD058T
(
  codempre VARCHAR2(5) not null,
  fechahor DATE not null,
  codaplic VARCHAR2(10) not null,
  codobjet VARCHAR2(50) not null,
  nomusuar VARCHAR2(25) not null,
  tiposoli VARCHAR2(1) not null,
  estsolic VARCHAR2(1) not null,
  usuaresp VARCHAR2(25) not null,
  numecaso VARCHAR2(20),
  obssolic VARCHAR2(500),
  obsrespu VARCHAR2(500),
  usucreac VARCHAR2(25) not null,
  feccreac DATE not null,
  usumodif VARCHAR2(25),
  fecmodif DATE
);
-- Add comments to the table 
comment on table DBSYA.SABD058T
  is 'SOLICITUDES DE OBJETOS DENTRO DE LAS EMPRESAS';
-- Add comments to the columns 
comment on column DBSYA.SABD058T.codempre
  is 'CODIGO DE LA EMPRESA';
comment on column DBSYA.SABD058T.fechahor
  is 'FECHA Y HORA DE LA SOLICITUD DEL FUENTE';
comment on column DBSYA.SABD058T.codaplic
  is 'CODIGO DE LA APLICACION DEL FUENTE SOLICITADO';
comment on column DBSYA.SABD058T.codobjet
  is 'CODIGO DEL OBJETO SOLICITADO';
comment on column DBSYA.SABD058T.nomusuar
  is 'USUARIO QUE SOLICITA EL OBJETO';
comment on column DBSYA.SABD058T.tiposoli
  is 'TIPO DE SOLICITUD [C - CONSULTA | D - DESARROLLO]';
comment on column DBSYA.SABD058T.estsolic
  is 'ESTADO DE LA SOLICITUD DEL FUENTE [S - SOLICITADO | C - CONSULTA | D - DESARROLLO | X - ANULADO | M - MONTADO]';
comment on column DBSYA.SABD058T.usuaresp
  is 'USUARIO RESPONSABLE DE LA SOLICITUD';
comment on column DBSYA.SABD058T.numecaso
  is 'NUMERO DEL CASO EN LA MESA DE AYUDA';
comment on column DBSYA.SABD058T.obssolic
  is 'OBSERVACION DEL ESPECIALISTA AL REALIZAR LA SOLICITUD';
comment on column DBSYA.SABD058T.obsrespu
  is 'OBSERVACION DEL ADMIN DEL FUENTE PARA EL ANALISTA QUE LO SOLICITA';
comment on column DBSYA.SABD058T.usucreac
  is 'USUARIO DE CREACION DE  REGISTRO';
comment on column DBSYA.SABD058T.feccreac
  is 'FECHA DE CREACION DE REGISTRO';
comment on column DBSYA.SABD058T.usumodif
  is 'USUARIO DE ACTUALIZACION DE REGISTRO';
comment on column DBSYA.SABD058T.fecmodif
  is 'FECHA DE ACTUALIZACION DE REGISTRO';
-- Create/Recreate indexes 
create index DBSYA.IDX_ESPEC_SOLIC on DBSYA.SABD058T (NOMUSUAR, ESTSOLIC, CODEMPRE);
create index DBSYA.IDX_FUENTES_SOLIC on DBSYA.SABD058T (CODOBJET, CODAPLIC, ESTSOLIC, CODEMPRE);
-- Create/Recreate primary, unique and foreign key constraints 
alter table DBSYA.SABD058T
  add constraint FK_SOLIC_EMPR foreign key (CODEMPRE)
  references DBSYA.SABD057T (CODEMPRE);
