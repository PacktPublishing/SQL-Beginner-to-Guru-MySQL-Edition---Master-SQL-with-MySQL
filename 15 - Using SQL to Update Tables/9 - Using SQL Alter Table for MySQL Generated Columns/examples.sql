use employees;

-- alter statements from previous assignment 

ALTER TABLE book ADD COLUMN asin char(10) after isbn;

ALTER TABLE book ADD COLUMN upc decimal(12, 0) after asin;

ALTER TABLE book ADD COLUMN ean decimal(13, 0) after upc;

ALTER TABLE book ADD COLUMN upc_barcode char(12) as (lpad(upc, 12, '0'));

SELECT (lpad(12345678, 12, '0'));

ALTER TABLE book ADD COLUMN ean_barcode char(13) as (lpad(ean, 13, '0'));

ALTER TABLE book drop column ean_barcode;