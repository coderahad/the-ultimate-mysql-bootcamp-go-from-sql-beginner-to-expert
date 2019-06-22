CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies (price) VALUES (88.84);

SELECT * FROM thingies;


INSERT INTO thingies (price) VALUES (8877.45);

INSERT INTO thingies (price) VALUES (8877665544.45);

-- for float precision upto ~7 digits
-- for double precision upto ~ 15 digits
-- decimals are exact float and double are approximate

CREATE TABLE doublethings (cost DOUBLE);

INSERT INTO doublethings (cost) VALUES (998877665544.45);

SELECT * FROM doublethings;

INSERT INTO doublethings (cost) VALUES (99887766554433.45);

INSERT INTO doublethings (cost) VALUES (9988776655443322.45);

INSERT INTO doublethings (cost) VALUES (998877665544332.45);