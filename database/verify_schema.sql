-- Football Greatness Index
-- Database schema v0.1

-- 1. List of tables in the database
SELECT name 
FROM sqlite_master 
WHERE type='table'
ORDER BY name;

-- 2. Club tenure relationships
PRAGMA foreign_keys_list(club_tenures);

-- 3. Player statistics relationships
PRAGMA foreign_keys_list(player_season_stats);

-- 4. Database structural integrity
PRAGMA integrity_check;

--5. Detect foreign key violations
PRAGMA foreign_key_check;

--6. Foreign key enforcement status
PRAGMA foreign_keys;

--7. Inspect table structures
PRAGMA table_info(players);
PRAGMA table_info(club_tenures);
PRAGMA table_info(player_season_stats);

--8. Inspect uniqueness index
PRAGMA index_list(player_season_stats);