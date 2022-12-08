DROP FUNCTION IF EXISTS change_model(varchar, integer);
CREATE OR REPLACE FUNCTION change_model (model varchar, c_id integer)
RETURNS varchar
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'update car set c_id = $1 where model = $2';
	RAISE NOTICE 'Query=%',str;
	EXECUTE str USING c_id, model;
	RETURN str;
END;
$$ LANGUAGE plpgsql;
