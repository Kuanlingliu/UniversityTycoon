-- Round 1, Move 5: Ruth rolls 5

UPDATE Players
SET location = (location + 5) % 20, credit_balance = credit_balance - 30
WHERE name = 'Ruth';

UPDATE Players
SET credit_balance = credit_balance + 30
WHERE name = 'Pradyumn';

INSERT INTO Audit
VALUES
(5, 4, 'Crawford', (SELECT credit_balance FROM Players WHERE id = 4), 1);