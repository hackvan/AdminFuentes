-- Create table
create table SABD051T
(
  codobjet VARCHAR2(50),
  desobjet VARCHAR2(100),
  tipobjet VARCHAR2(10),
  codaplic VARCHAR2(10),
  obsobjet VARCHAR2(100),
  estobjet VARCHAR2(2),
  resulrtf VARCHAR2(2),
  codempre VARCHAR2(5) default 'GC' not null
);
-- Add comments to the columns 
comment on column DBSYA.SABD051T.codempre
  is 'CODIGO DE LA EMPRESA.';
