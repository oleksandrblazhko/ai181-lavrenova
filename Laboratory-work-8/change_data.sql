DROP FUNCTION change_year(integer,integer);
CREATE OR REPLACE FUNCTION change_year (id integer, year integer)
RETURNS BOOLEAN
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'update car set year = '''|| year ||''' where c_id = '''||id||'''';
	RAISE NOTICE 'Query=%',str;
	EXECUTE str;
	RETURN 1;
END;
$$ LANGUAGE plpgsql;
