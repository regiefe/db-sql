DROP TABLE login;
CREATE TABLE login (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(50) NOT NULL,
    senha VARCHAR(100) NOT NULL
);
.schema login
