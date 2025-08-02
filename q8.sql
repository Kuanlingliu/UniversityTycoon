-- Round 2, Move 9: Ruth rolls 6
UPDATE Players
SET location = (location + 6) % 20
WHERE name = 'Ruth';


INSERT INTO Audit
VALUES
(10, 4, 'Library', (SELECT credit_balance FROM Players WHERE id = 4), 2);


-- Round 2, Move 10: Ruth rolls 1
UPDATE Players
SET location = (location + 1) % 20, credit_balance = credit_balance - 80
WHERE name = 'Ruth';

UPDATE Players
SET credit_balance = credit_balance + 80
WHERE name = 'Pradyumn';

INSERT INTO Audit
VALUES
(11, 4, 'Sam Alex', (SELECT credit_balance FROM Players WHERE id = 4), 2);