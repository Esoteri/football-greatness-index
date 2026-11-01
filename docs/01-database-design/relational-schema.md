FGI Relational Schema Specification

Version: 0.1
Milestone: 1 — Database Architecture
Status: Proposed Schema
Database Engine: SQLite



1. Purpose

This document specifies the initial relational database structure for the Football Greatness Index.

The schema defines the tables, columns, data types, keys, relationships, and integrity constraints required for the first functional database prototype.

The initial implementation focuses on club football records and selected season-level statistics.

2. Database Conventions

The following conventions apply to the initial schema:

Table names use lowercase snake_case.
Column names use lowercase snake_case.
Primary keys use INTEGER.
Textual values use TEXT.
Dates are stored as ISO 8601-formatted TEXT.
Missing historical values are represented by NULL.
Foreign keys connect related entities.
Statistical values must not be negative.
Derived greatness scores are excluded from the initial schema.
3. Table Specifications

3.1 players

Purpose: Store footballer identity and biographical information.

| Column | Data Type | Constraints |
|---|---|---|
| player_id | INTEGER | PRIMARY KEY |
| full_name | TEXT | NOT NULL |
| common_name | TEXT | Optional |
| birth_date | TEXT | Optional |
| nationality | TEXT | Optional |

3.2 clubs

Purpose: Store football club information.

| Column | Data Type | Constraints |
|---|---|---|
| club_id | INTEGER | PRIMARY KEY |
| club_name | TEXT | NOT NULL |
| country | TEXT | NOT NULL |
| founded_year | INTEGER | Optional |

Club names are not assumed to be globally unique.

3.3 seasons

Purpose: Represent football reporting seasons.

| Column | Data Type | Constraints |
|---|---|---|
| season_id | INTEGER | PRIMARY KEY |
| season_label | TEXT | NOT NULL, UNIQUE |
| start_year | INTEGER | NOT NULL |
| end_year | INTEGER | NOT NULL |

Integrity rule: end_year must be greater than or equal to start_year.

The initial version assumes a single unambiguous season label per reporting period. Competition-specific editions may be introduced later.

3.4 competitions

Purpose: Store football competition identities.

| Column | Data Type | Constraints |
|---|---|---|
| competition_id | INTEGER | PRIMARY KEY |
| competition_name | TEXT | NOT NULL |
| competition_type | TEXT | NOT NULL |

Competition names are not automatically assumed to be globally unique.

3.5 club_tenures

Purpose: Represent periods in which footballers belonged to particular clubs.

| Column | Data Type | Constraints |
|---|---|---|
| tenure_id | INTEGER | PRIMARY KEY | 
| player_id | INTEGER | NOT NULL, FOREIGN KEY |
| club_id | INTEGER | NOT NULL, FOREIGN KEY |
| start_date | TEXT | Optional |
| end_date | TEXT | Optional |

Foreign-key relationships:

player_id references players.player_id.
club_id references clubs.club_id.
Integrity rule: When both dates are known, end_date must not precede start_date.

A player may have multiple distinct tenures at the same club.

3.6 player_season_stats

Purpose: Store aggregated statistical performances by club tenure, season, and competition.

| Column | Data Type | Constraints|
|---|---|---|
| stat_id | INTEGER | PRIMARY KEY |
| tenure_id | INTEGER | NOT NULL, FOREIGN KEY |
| season_id | INTEGER | NOT NULL, FOREIGN KEY |
| competition_id | INTEGER | NOT NULL, FOREIGN KEY |
| appearances | INTEGER | Nonnegative or NULL |
| goals | INTEGER | Nonnegative or NULL |
| assists | INTEGER | Nonnegative or NULL |
| minutes_played | INTEGER | Nonnegative or NULL |

Foreign-key relationships:

tenure_id references club_tenures.tenure_id.
season_id references seasons.season_id.
competition_id references competitions.competition_id.
Uniqueness rule: The combination of tenure_id, season_id, and competition_id must be unique.

Integrity rule: Recorded numerical statistics must be nonnegative.

4. Relationship Summary

| Parent Table | Child Table | Relationship |
|---|---|---|
| players | club_tenures | One-to-many |
| clubs | club_tenures | One-to-many |
| club_tenures | player_season_stats | One-to-many |
| seasons | player_season_stats | One-to-many |
| competitions | player_season_stats | One-to-many |

The database uses club_tenures to resolve the many-to-many relationship between players and clubs.

5. Normalization Strategy

The initial schema aims to follow foundational relational normalization principles.

Player information is stored separately from club information.
Club membership history is represented through a dedicated linking table.
Seasons and competitions are stored as reusable entities.
Statistical records reference existing entities rather than duplicating their names and descriptions.
Formal normalization analysis and further refinement will occur as the project develops.

6. Historical Data Integrity

Historical statistics may be missing, disputed, or incompletely documented.

The database must distinguish unknown values from confirmed values of zero.

The first prototype will use manually verified records.

A later version should introduce structured source attribution, uncertainty tracking, and statistical definitions.

7. Known Limitations

The initial schema does not yet fully represent:

National team appearances.
International tournaments.
Match-level performances.
Competition-specific season editions.
Player transfers with uncertain dates.
Historical positional changes.
Awards and honors.
Multiple conflicting statistical sources.
Versioned greatness evaluations.
These limitations are intentionally deferred rather than ignored.

8. Schema Acceptance Criteria

The schema must:

Create six related tables.
Define a primary key for every table.
Enforce the identified foreign-key relationships.
Require essential fields.
Reject invalid negative statistical values.
Prevent duplicate season-statistical records for the same tenure, season, and competition.
Permit unknown statistics to remain NULL.
Support basic queries involving multiple related tables.
9. Next Implementation Activity

Create database/schema.sql containing SQLite-compatible CREATE TABLE statements.

Validate the schema by creating a local SQLite database and testing its integrity constraints.



Next Step: Implement Schema Version 0.1 in SQLite.