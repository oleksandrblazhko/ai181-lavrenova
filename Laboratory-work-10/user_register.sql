CREATE OR REPLACE FUNCTION user_register(
    v_user_name varchar, v_password varchar
)
	RETURNS INTEGER
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM probable_v2_top207 WHERE passname = v_password) THEN
		INSERT INTO users (user_name,password_hash) 
			VALUES (v_user_name, md5(v_password)); -- внесення хеш-значення паролю
		RETURN 1;
	ELSE 
		RAISE NOTICE 'Passname = % is bad passname',v_password;
		RETURN -1;
	END IF;
END;
$$ LANGUAGE plpgsql;

