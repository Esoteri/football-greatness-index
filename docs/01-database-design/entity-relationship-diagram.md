# FGI Entity-Relationship Diagram

**Version:** 0.1 
**Status:** Preliminary Design 
**Milestone:** 1 — Database Architecture

## Initial Database Relationships

```mermaid
erDiagram
    PLAYERS ||--o{ CLUB_TENURES : has
    CLUBS ||--o{ CLUB_TENURES : hosts
    CLUB_TENURES ||--o{ PLAYER_SEASON_STATS : records
    SEASONS ||--o{ PLAYER_SEASON_STATS : contains
    COMPETITIONS ||--o{ PLAYER_SEASON_STATS : organizes

    PLAYERS {
        integer player_id PK
        string full_name
        string common_name
        date birth_date
        string nationality
    }

    CLUBS {
        integer club_id PK
        string club_name
        string country
        integer founded_year
    }

    CLUB_TENURES {
        integer tenure_id PK
        integer player_id FK
        integer club_id FK
        date start_date
        date end_date
    }

    SEASONS {
        integer season_id PK
        string season_label
        integer start_year
        integer end_year
    }

    COMPETITIONS {
        integer competition_id PK
        string competition_name
        string competition_type
    }

    PLAYER_SEASON_STATS {
        integer stat_id PK
        integer tenure_id FK
        integer season_id FK
        integer competition_id FK
        integer appearances
        integer goals
        integer assists
        integer minutes_played
    }
```

## Relationship Notes

- A player may have multiple club tenures.
- A club may have multiple player tenures.
- Each club tenure belongs to one player and one club.
- Each statistical record refers to one club tenure, one season, and one competition.
- A season or competition can be associated with multiple statistical records.

## Design Considerations

This preliminary model focuses on club football. National-team participation and more detailed competition editions will be added later.

Dates, keys, constraints, and statistical record uniqueness require further review before SQL implementation.