CREATE OR REPLACE PROCEDURE sso_control(
    v_user_name VARCHAR,
	v_token VARCHAR
)
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM users u, sso_tokens t
					WHERE lower(u.user_name) = v_user_name 
						AND u.user_id = t.user_id
						AND t.token = v_token
				) THEN
		RAISE EXCEPTION 'Auth Error';
	END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION get_data(
    v_user_name VARCHAR,
	v_token VARCHAR
)
RETURNS TABLE
(user_id INTEGER, user_name VARCHAR)
AS $$
BEGIN
	CALL sso_control(v_user_name,v_token);
	RETURN QUERY EXECUTE 'SELECT user_id,user_name FROM users';
END;
$$ LANGUAGE plpgsql;
