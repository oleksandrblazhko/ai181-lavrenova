DROP TABLE IF EXISTS sso_tokens;
CREATE TABLE sso_tokens (
	user_id SERIAL,
	token 	VARCHAR,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);
