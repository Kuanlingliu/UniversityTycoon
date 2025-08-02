-- Round 2, Move 8: Pradyumn rolls 2

UPDATE Players
SET location = (location + 2) % 20
WHERE name = 'Pradyumn';

INSERT INTO Audit
VALUES
(8, 3, 'Youre Suspended', (SELECT credit_balance FROM Players WHERE id = 3), 2);


-- Round 2, Move 9: Pradyumn move to the "Suspension" location
UPDATE Players
SET location = 8
WHERE name = 'Pradyumn';

INSERT INTO Audit
VALUES
(9, 3, 'Suspension', (SELECT credit_balance FROM Players WHERE id = 3), 2);