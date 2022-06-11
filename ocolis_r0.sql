BEGIN;
-- faire place nette avant de créer les tables
DROP TABLE IF EXISTS "place", "package", "vehicle";

DROP TYPE IF EXISTS "dimension";

COMMIT;