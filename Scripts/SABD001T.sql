-- Create table
create table SABD001T
(
  nomusuar VARCHAR2(25) not null,
  basusuar VARCHAR2(20) not null,
  codareat VARCHAR2(8),
  desusuar VARCHAR2(100),
  feccreac DATE,
  estlicen VARCHAR2(1),
  tipusuar VARCHAR2(1),
  maiusuar VARCHAR2(100),
  fecretir DATE,
  estusuar VARCHAR2(1),
  nidusuar VARCHAR2(12),
  fecexpir DATE,
  fecactiv DATE,
  descargo VARCHAR2(100),
  codempre VARCHAR2(5) default 'GC' not null,
  rutapres VARCHAR2(500)
);
-- Add comments to the columns 
comment on column DBSYA.SABD001T.nomusuar
  is 'NOMBRE DEL USUARIO';
comment on column DBSYA.SABD001T.basusuar
  is 'BASE DE DATOS DEL USUARIO';
comment on column DBSYA.SABD001T.codareat
  is 'CODIGO AREA DE TRABAJO';
comment on column DBSYA.SABD001T.desusuar
  is 'NOMBRES Y APELLIDOS DEL USUARIO';
comment on column DBSYA.SABD001T.feccreac
  is 'FECHA CREACION DEL USUARIO';
comment on column DBSYA.SABD001T.estlicen
  is 'INDICADOR DE LICENCIAMIENTO (S: LICENCIA REQUERIDA / N: NO REQUIERE LICENCIA)';
comment on column DBSYA.SABD001T.tipusuar
  is 'TIPO DE USUARIO (F: USUARIO FINAL/ E:ESQUEMA/D: DESARROLLO/A:ADMINISTRATIVO/S:SOPORTE/C:CONEXION/P:PRUEBAS)';
comment on column DBSYA.SABD001T.codempre
  is 'CODIGO DE LA EMPRESA.';
comment on column DBSYA.SABD001T.rutapres
  is 'RUTA POR DEFECTO PARA LOS PRESTAMOS DE OBJETOS.';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DBSYA.SABD001T
  add constraint PK_SABD001T primary key (NOMUSUAR, BASUSUAR)
  using index;
