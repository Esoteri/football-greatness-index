-- Football Greatness Index
--Database schema v0.1

PRAGMA foreign_keys = ON;

--Table 1: Players

CREATE TABLE IF NOT EXISTS players (
    player_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    common_name TEXT,
    birth_date TEXT,
    nationality TEXT
);

-- Table 2: Clubs

CREATE TABLE IF NOT EXISTS clubs (
    club_id INTEGER PRIMARY KEY,
    club_name TEXT NOT NULL,
    country TEXT NOT NULL,
    founded_year INTEGER
);

--Table 3: Seasons

CREATE TABLE IF NOT EXISTS seasons (
    season_id INTEGER PRIMARY KEY,
    season_label TEXT NOT NULL UNIQUE,
    start_year INTEGER NOT NULL,
    end_year INTEGER NOT NULL

    CHECK (end_year >= start_year)
);

-- Table 4: Competitions

CREATE TABLE IF NOT EXISTS competitions (
    competition_id INTEGER PRIMARY KEY,
    competition_name TEXT NOT NULL,
    competition_type TEXT NOT NULL
);

-- Table 5: Club Tenures

CREATE TABLE IF NOT EXISTS club_tenures (
    tenure_id INTEGER PRIMARY KEY,
    player_id INTEGER NOT NULL,
    club_id INTEGER NOT NULL,
    start_date TEXT,
    end_date TEXT,

    FOREIGN KEY (player_id)
        REFERENCES players(player_id),

    FOREIGN KEY (club_id)
        REFERENCES clubs(club_id),

    CHECK (
        start_date IS NULL
        OR end_date IS NULL
        OR end_date >= start_date
    )
);

-- Table 6: Player Season Stats

CREATE TABLE IF NOT EXISTS player_season_stats (
    stat_id INTEGER PRIMARY KEY,
    tenure_id INTEGER NOT NULL,
    season_id INTEGER NOT NULL,
    competition_id INTEGER NOT NULL,

    appearances INTEGER CHECK (
        appearances >= 0
    ),

    goals INTEGER CHECK (
        goals >= 0
    ),

    assists INTEGER CHECK (
        assists >= 0
    ),

    minutes_played INTEGER CHECK (
        minutes_played >= 0
    ),

    FOREIGN KEY (tenure_id)
        REFERENCES club_tenures(tenure_id),

    FOREIGN KEY (season_id)
        REFERENCES seasons(season_id), 

    FOREIGN KEY (competition_id)
        REFERENCES competitions(competition_id)
    
    UNIQUE (
        tenure_id,
        season_id,
        competition_id
    )
);