INSERT INTO Players VALUES
    (1, 'Gareth', 'Certificate', 345, 19), 
    (2, 'Uli', 'Mortarboard', 590, 2),
    (3, 'Pradyumn', 'Book', 465, 6),
    (4, 'Ruth', 'Pen', 360, 4)
;
	

INSERT INTO Token (name, owner_id)
VALUES
    ('Certificate', (SELECT id FROM Players WHERE name = 'Gareth')),
    ('Mortarboard', (SELECT id FROM Players WHERE name = 'Uli')),
    ('Book', (SELECT id FROM Players WHERE name = 'Pradyumn')),
    ('Pen', (SELECT id FROM Players WHERE name = 'Ruth'));
;
	
    
INSERT INTO Location 
VALUES  
    (1, 'Welcome  Week', 'purple'),
	(2, 'Kilburn', 'green'),
    (3, 'IT', 'green'),
    (4, 'Hearing 1', 'purple'),
    (5, 'Uni Place', 'orange'),
    (6, 'AMBS', 'orange'),
    (7, 'Rag 1', 'purple'),
	(8, 'Suspension', 'red'),
	(9, 'Crawford', 'blue'),
	(10, 'Sugden', 'blue'),
	(11, 'Ali G', 'yellow'),
    (12, 'Shopping Precinct', 'brown'),
	(13, 'MECD', 'brown'),
	(14, 'Rag 2', 'purple'),
	(15, 'Library', 'grey'),
	(16, 'Sam Alex', 'grey'),
	(17, 'Hearing 2', 'purple'),
	(18, 'Youre suspended', 'red'),
	(19, 'Museum', 'black'),
	(20, 'Whitworth Hall', 'black');
;  	
	
	
INSERT INTO Building
VALUES
    ('Kilburn', 15, 'triangle', (SELECT id FROM Players WHERE token = 'Pen')),
    ('IT', 15,  'triangle', (SELECT id FROM Players WHERE token = 'Certificate')),
    ('Uni Place', 25,  'square', (SELECT id FROM Players WHERE token = 'Certificate')),
    ('AMBS', 25,  'square', (SELECT id FROM Players WHERE token = 'Mortarboard')),
    ('Crawford', 30, 'circle', (SELECT id FROM Players WHERE token = 'Book')),
    ('Sugden', 30,  'circle', (SELECT id FROM Players WHERE token = 'Certificate')),
    ('Shopping Precinct', 35, 'diamond', NULL),
    ('MECD', 35,  'diamond', (SELECT id FROM Players WHERE token = 'Mortarboard')),
    ('Library', 40,  'plus', (SELECT id FROM Players WHERE token = 'Book')),
    ('Sam Alex', 40,  'plus', NULL),
    ('Museum', 50,  'ring', (SELECT id FROM Players WHERE token = 'Book')),
    ('Whitworth Hall', 50, 'ring', (SELECT id FROM Players WHERE token = 'Pen'));
;
	
	
INSERT INTO Special
VALUES
("Hearing 1", "You are found guilty of academic malpractice. Fined 20cr."),
("Hearing 2", "You are in rent arrears. Fined 25cr."),
("Rag 1", "You win a fancy dress competition. Awarded 15cr."),
("Rag 2", "You receive a bursary and share it with your friends. Give all other players 10cr.")
;









