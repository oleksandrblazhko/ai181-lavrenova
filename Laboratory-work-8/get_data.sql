CREATE OR REPLACE FUNCTION get_data (model_name VARCHAR)
RETURNS TABLE
(c_id INTEGER, model VARCHAR, info INTEGER)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT * from car where model = "||model_name||" ';
	RAISE NOTICE 'Query=%' ,str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
