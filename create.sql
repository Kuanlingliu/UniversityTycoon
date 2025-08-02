CREATE TABLE Players (
    id INT PRIMARY KEY,
    name VARACHAR(50),
    token VARACHAR(50), 
    credit_balance INT,
    location INT       
);


CREATE TABLE Token (
	name VARACHAR(50) PRIMARY KEY,
	owner_id INT,
	FOREIGN KEY(owner_id) REFERENCES Players(id)
);


CREATE TABLE Location (
    id INT,
	name VARACHAR(50) PRIMARY KEY,
	color VARACHAR(50)
);


CREATE TABLE Building (
    name VARACHAR(50) PRIMARY KEY,
	tuition INT,
	shape VARACHAR(50),
	owner INT,
	FOREIGN KEY(owner) REFERENCES Players(id)
);


CREATE TABLE Special (
	name VARACHAR(50) PRIMARY KEY,
	description TEXT
);


CREATE TABLE Audit (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	player_id INT,
	location VARACHAR(50),
	credit_balance INT,
	game_round INT
);


