CREATE TABLE IF NOT EXISTS users (
	user_id INTEGER PRIMARY KEY,
    login VARCHAR(40),
    reg_dttm TIMESTAMP
);

CREATE TABLE IF NOT EXISTS payments (
	payment_id INTEGER PRIMARY KEY,
    user_id INTEGER ,
    payment_sum DOUBLE,
    payment_dttm TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE IF NOT EXISTS sessions (
	session_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    begin_dttm TIMESTAMP,
    end_dttm TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES users (user_id)
);
