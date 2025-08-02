-- Round 2, Move 6: Gareth rolls 4

UPDATE Players
SET location = (location + 4) % 20, credit_balance = credit_balance + 15
WHERE name = 'Gareth';

INSERT INTO Audit
VALUES
(6, 1, 'RAG 1', (SELECT credit_balance FROM Players WHERE id = 1), 2);