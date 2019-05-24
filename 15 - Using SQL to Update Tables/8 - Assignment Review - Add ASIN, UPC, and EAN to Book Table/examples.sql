use employees;

-- Add columns to Book table for ASIN, UPC, EAN.
-- ASIN - Amazon Standard Identification Number - 10 Alphanumeric characters
-- UPC - Universal Product Code - 12 Numeric Digits
-- EAN - International / European Article Number - 13 Numeric Digits
-- Hint: Use Decimal for columns with numeric digits 

ALTER TABLE book ADD COLUMN asin char(10) after isbn;

ALTER TABLE book ADD COLUMN upc decimal(12, 0) after asin;

ALTER TABLE book ADD COLUMN ean decimal(13, 0) after upc;