-- Round 2, Move 7: Uli rolls 4

UPDATE Players
SET location = (location + 4) % 20
WHERE name = 'Uli';

INSERT INTO Audit
VALUES
(7, 2, 'Ali G', (SELECT credit_balance FROM Players WHERE id = 2), 2);