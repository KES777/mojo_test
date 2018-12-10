-- Convert schema '/home/kes/work/projects/mojo_test/share/migrations/_source/deploy/2/001-auto.yml' to '/home/kes/work/projects/mojo_test/share/migrations/_source/deploy/1/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE "user" DROP COLUMN data;

;

COMMIT;

