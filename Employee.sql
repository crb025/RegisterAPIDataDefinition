CREATE EXTENSION pgcrypto; --Allows PostgreSQL to understand UUIDs. Only have to create the extension once for a database.

--DROP TABLE product;

CREATE TABLE employee (
  firstname character varying(32),
  lastname character varying(32),
  id uuid NOT NULL DEFAULT gen_random_uuid(), 
  active boolean,
  classification int, --1=general manager, 2=shift manager, 3=cashier
  manager_id uuid NOT NULL DEFAULT '', --TODO: add ability to assign manager
  password character varying(32),
  CONSTRAINT employee_pkey PRIMARY KEY (id),
  createdon timestamp without time zone NOT NULL DEFAULT now()
) WITH (
  OIDS=FALSE
);

