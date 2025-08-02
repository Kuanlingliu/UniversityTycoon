CREATE VIEW leaderboard AS
SELECT 
    Players.name,

    LOWER(REPLACE(Location.name, ' ', '_')) AS location,

    Players.credit_balance AS credits,

    (
        SELECT GROUP_CONCAT(LOWER(REPLACE(Building.name, ' ', '_')), ', ')
        FROM Building
        WHERE Building.owner = Players.id
    ) AS buildings,

    (Players.credit_balance + 
        COALESCE((SELECT SUM(Building.tuition*2) FROM Building WHERE Building.owner = Players.id), 0)
    ) AS net_worth

FROM Players
JOIN Location 
ON Players.location = Location.id

ORDER BY net_worth DESC;

