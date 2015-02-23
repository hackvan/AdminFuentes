-- Create table
create table SABD002T
(
  codaplic VARCHAR2(10),
  basaplic VARCHAR2(20),
  desaplic VARCHAR2(100),
  estaplic VARCHAR2(1),
  codproce VARCHAR2(5),
  codempre VARCHAR2(5) default 'GC' not null,
  usuadmin VARCHAR2(25),
  rutamodu VARCHAR2(500)
);
-- Add comments to the columns 
comment on column DBSYA.SABD002T.codempre
  is 'CODIGO DE LA EMPRESA.';
comment on column DBSYA.SABD002T.usuadmin
  is 'USUARIO RESPONSABLE DE LOS OBJETOS DEL MODULO.';
comment on column DBSYA.SABD002T.rutamodu
  is 'RUTA POR DEFECTO PARA LOS OBJETOS DEL MODULO.';
