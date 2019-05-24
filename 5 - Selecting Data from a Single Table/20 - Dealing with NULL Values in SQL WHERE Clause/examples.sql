use employees;

select * from titles where to_date is null;

select * from information_schema.PLUGINS where PLUGIN_LIBRARY IS NULL;

select * from information_schema.PLUGINS where PLUGIN_LIBRARY IS NOT NULL;