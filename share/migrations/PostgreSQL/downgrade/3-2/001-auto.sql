-- Convert schema '/home/kes/work/projects/mojo_test/share/migrations/_source/deploy/3/001-auto.yml' to '/home/kes/work/projects/mojo_test/share/migrations/_source/deploy/2/001-auto.yml':;

;
BEGIN;

;
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "email" character varying(128),
  "login" character varying(32),
  "password" character varying(128) NOT NULL,
  "data" json DEFAULT '{}'::json NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_email" UNIQUE ("email")
);

;
DROP TABLE users CASCADE;

;

COMMIT;

