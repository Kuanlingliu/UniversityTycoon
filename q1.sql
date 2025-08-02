-- Round 1, Move 1: Gareth rolls 4

UPDATE Players
SET location = (location + 4) % 20, credit_balance = credit_balance + 100
WHERE name = "Gareth";

INSERT INTO Audit
VALUES
(1, 1, 'IT', (SELECT credit_balance FROM Players WHERE id = 1), 1);