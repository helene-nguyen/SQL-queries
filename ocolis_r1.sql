BEGIN;
-- faire place nette avant de créer les tables
DROP TABLE IF EXISTS "place", "package";

CREATE TABLE "place" (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    reference text NOT NULL UNIQUE,
    name text NOT NULL,
    address text NOT NULL,
    additional text,
    postal_code int NOT NULL,
    city text NOT NULL
);

-- il faut gérer les cas qui peuvent poser problème (des valeurs négatives dans les colonnes concernées par les domaines créés)
CREATE DOMAIN POSINT AS INT CHECK (VALUE>0);

CREATE TYPE DIMENSION AS (
    height POSINT, 
    width POSINT,
    depth POSINT
);

CREATE TABLE "package" (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    serial_number int NOT NULL,
    content_description text NOT NULL,
    weight float NOT NULL, -- en kg, avec précision au gramme près
    volume DIMENSION NOT NULL, -- en centimètres cubes
    worth int NOT NULL, -- c'est approximatif à l'euro près
    sender_id int REFERENCES place(id),
    recipient_id int REFERENCES place(id)
);

COMMIT;