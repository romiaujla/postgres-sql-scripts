-- Creating supplier table
DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier(
    id INTEGER PRIMARY KEY GENEREATED BY DEFAULT AS INDENTITY,
    supplier_name TEXT NOT NULL,
    phone TEXT,
    city TEXT
);


-- Creating Items Table
DROP TABLE IF EXISTS item;

CREATE TABLE item(
    id INTEGER PRIMARY KEY GENEREATED BY DEFAULT AS INDENTITY,
    item_name TEXT NOT NULL,
    unit TEXT,
    unit_cost NUMERIC, 
);

