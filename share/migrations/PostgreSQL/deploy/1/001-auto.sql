-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Mon Dec 10 15:25:28 2018
-- 
;
--
-- Table: user
--
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "email" character varying(128),
  "login" character varying(32),
  "password" character varying(128) NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_email" UNIQUE ("email")
);

;
