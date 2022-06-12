BEGIN;

-- on crèe un domaine qui est permet de mettre en place une contrainte sur un type
-- ici on ajout la contrainte que la valeur soit supérieur à 0
CREATE DOMAIN POSFLOAT AS float CHECK (VALUE>0);

ALTER TABLE "package"
    ALTER COLUMN "weight" TYPE POSFLOAT;

-- -- EXEMPLE 2 CODE POSTAL
-- CREATE DOMAIN postal_fr AS TEXT
-- CHECK(
--    VALUE ~ '/^(?:0[1-9]|[1-8]\d|9[0-7])(\d{3})$/gmx'
-- );

-- CREATE DOMAIN v_plate_fr AS TEXT
-- CHECK(
--    VALUE ~ '/^((?!WW|SS|[OUI])[A-Z]){2}-(\d{3})-((?!WW|SS|[OUI])[A-Z]){2}$/gm'
-- );
//todo 

COMMIT;