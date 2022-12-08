CREATE OR REPLACE FUNCTION change_model (model varchar, c_id integer)
RETURNS varchar
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'update car set c_id = '''||c_id ||''' where model  = '''|| model ||'''';
	RAISE NOTICE 'Query=%',str;
	EXECUTE str;
	RETURN str;
END;
$$ LANGUAGE plpgsql;
