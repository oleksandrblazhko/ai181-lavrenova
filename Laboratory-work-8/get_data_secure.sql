DROP FUNCTION get_data(character varying);
CREATE OR REPLACE FUNCTION get_data (model_name varchar)
RETURNS TABLE
(c_id INTEGER, model VARCHAR, info INTEGER)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT * from car where model = $1';
	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str USING model_name;
END;
$$ LANGUAGE plpgsql;
