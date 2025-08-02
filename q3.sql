-- Round 1, Move 3: Pradyumn rolls 6

UPDATE Players
SET location = (location + 6) % 20
WHERE name = 'Pradyumn';

INSERT INTO Audit
VALUES
(3, 3, 'Shopping Precinct', (SELECT credit_balance FROM Players WHERE id = 3), 1);


-- Round 1, Move 4: Pradyumn rolls 4

UPDATE Players
SET location = (location + 4) % 20, credit_balance = credit_balance - 80
WHERE name = 'Pradyumn';

UPDATE Building
SET owner = 3
WHERE name = 'Sam Alex';

INSERT INTO Audit
VALUES
(4, 3, 'Sam Alex', (SELECT credit_balance FROM Players WHERE id = 3), 1);


