-- Football Greatness Index
-- Milestone 1
-- Initial Club Tenure Dataset

-- Exact dates deferred until source verification.

INSERT INTO club_tenures (
    tenure_id, 
    player_id, 
    club_id, 
    start_date, 
    end_date
)

VALUES
    -- Lionel Messi
    (1, 1, 1, NULL, NULL),
    (2, 1, 2, NULL, NULL),
    (3, 1, 3, NULL, NULL),

    -- Cristiano Ronaldo
    (4, 2, 4, NULL, NULL),
    (5, 2, 5, NULL, NULL),
    (6, 2, 6, NULL, NULL),
    (7, 2, 7, NULL, NULL),
    (8, 2, 5, NULL, NULL),
    (9, 2, 8, NULL, NULL),

    -- Pelé
    (10, 3, 9, NULL, NULL),

    -- Paulo Maldini
    (11, 5, 10, NULL, NULL);
    