-- Football Greatness Index
-- Database schema v0.1

-- 1. List of tables in the database
-- SELECT name 
-- FROM sqlite_master 
-- WHERE type='table'
-- ORDER BY name;

-- 2. Club tenure relationships
-- PRAGMA foreign_keys_list(club_tenures);

-- 3. Player statistics relationships
-- PRAGMA foreign_keys_list(player_season_stats);

-- 4. Database structural integrity
-- PRAGMA integrity_check;

--5. Detect foreign key violations
-- PRAGMA foreign_key_check;

--6. Foreign key enforcement status
-- PRAGMA foreign_keys;

--7. Inspect table structures
-- PRAGMA table_info(players);
-- PRAGMA table_info(club_tenures);
-- PRAGMA table_info(player_season_stats);

--8. Inspect uniqueness index
-- PRAGMA index_list(player_season_stats);

--9. Verify clubs and players are stored correctly
-- SELECT
    -- (SELECT COUNT(*) FROM players) AS player_count,
    -- (SELECT COUNT(*) FROM clubs) AS club_count;

--10. Verify club tenures are stored correctly
-- SELECT *
-- FROM club_tenures
-- ORDER BY tenure_id;


-- SELECT 
--    players.common_name,
--    clubs.club_name
-- FROM club_tenures
-- JOIN players
-- ON club_tenures.player_id = players.player_id
-- JOIN clubs
-- ON club_tenures.club_id = clubs.club_id
-- ORDER BY players.common_name, club_tenures.tenure_id;

-- SELECT
--    p.common_name,
--    c.club_name,
--    ct.tenure_id
-- FROM club_tenures AS ct
-- JOIN players AS p 
--     ON ct.player_id = p.player_id
-- JOIN clubs AS c 
--     ON ct.club_id = c.club_id
-- WHERE p.common_name = 'Cristiano Ronaldo'
-- ORDER BY ct.tenure_id;

-- SELECT
--    p.common_name,
--    COUNT(ct.tenure_id) AS tenure_count
-- FROM players AS p
-- LEFT JOIN club_tenures AS ct 
--     ON p.player_id = ct.player_id
-- GROUP BY p.player_id, p.common_name
-- ORDER BY tenure_count DESC;

-- SELECT DISTINCT
--    p.common_name
-- FROM players AS p
-- JOIN club_tenures AS ct
--     ON p.player_id = ct.player_id
-- JOIN clubs AS c
--     ON ct.club_id = c.club_id
-- WHERE c.club_id = 'Manchester United'

-- SELECT *
-- FROM seasons
-- ORDER BY start_year, end_year;

-- SELECT
--    season_label,
--    start_year,
--    end_year
-- FROM seasons
-- WHERE start_year != end_year
-- ORDER BY start_year;

-- SELECT
--    season_label,
--    start_year
-- FROM seasons
-- WHERE start_year >= 2023
-- ORDER BY start_year, end_year;

-- SELECT *
-- FROM competitions
-- ORDER BY competition_id;

-- SELECT
--    competition_name,
-- FROM competitions
-- WHERE competition_type = 'League'
-- ORDER BY competition_name;

-- SELECT
--    competition_type,
--    COUNT(*) AS competition_count
-- FROM competitions
-- GROUP BY competition_type
-- ORDER BY competition_count DESC;

-- SELECT
--     competition_name
-- FROM competitions
-- WHERE competition_name LIKE '%League%';

SELECT 'players' AS table_name, COUNT(*) AS record_count
FROM players

UNION ALL

SELECT 'clubs', COUNT(*)
FROM clubs

UNION ALL

SELECT 'club_tenures', COUNT(*)
FROM club_tenures

UNION ALL

SELECT 'seasons', COUNT(*)
FROM seasons

UNION ALL

SELECT 'competitions', COUNT(*)
FROM competitions

UNION ALL

SELECT 'player_season_stats', COUNT(*)
FROM player_season_stats;

-- SELECT *
-- FROM club_tenures
-- ORDER BY tenure_id;

-- SELECT COUNT(*) AS total_tenures
-- FROM club_tenures;