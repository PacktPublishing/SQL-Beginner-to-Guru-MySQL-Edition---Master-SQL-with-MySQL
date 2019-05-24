use employees;

ALTER TABLE author add index (last_name);

ALTER TABLE author drop index last_name;

ALTER TABLE author add index last_name_idx (last_name);

ALTER TABLE author drop index last_name_idx;
