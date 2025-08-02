-- Round 1, Move 2: Uli rolls 5

UPDATE Players
SET location = (location + 5) % 20, credit_balance = credit_balance + 15
WHERE name = "Uli";

INSERT INTO Audit
VALUES
(2, 2, "RAG 1", (SELECT credit_balance FROM Players WHERE id = 2), 1);