CREATE OR REPLACE FUNCTION password_is_correct_v2(password varchar)
RETURNS BOOLEAN
AS $$
BEGIN
	RETURN password SIMILAR TO '(\S{9,20}|[^0-9]{3,10}|[^a-z]{2,10}|[^A-Z]{2,10}|[^!@#$%^&*]{2,10})';
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION user_register_secure(
    v_user_name varchar, 
	v_password varchar
)
	RETURNS INTEGER
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM probable_v2_top207 
						WHERE passname = v_password) THEN
		IF password_is_correct_v2(v_password) THEN				
			INSERT INTO users (user_name,password_hash) 
					VALUES (v_user_name,
						md5(v_password)); -- внесення хеш-значення паролю
			RETURN 1;
		ELSE
			RAISE NOTICE 'Passname = % INCORRECT!',v_password;
			RETURN -1;
		END IF;
	ELSE 
		RAISE NOTICE 'Passname = % is bad passname',v_password;
		RETURN -1;
	END IF;
END;
$$ LANGUAGE plpgsql;
