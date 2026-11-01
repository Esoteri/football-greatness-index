FGI Database Requirements Specification

Document Version: 0.1
Milestone: 1 — Database Architecture and Design
Status: Initial Draft
Database Technology: SQLite



1. Purpose

The purpose of the FGI database is to store structured historical football information that can support statistical analysis, player comparisons, and future greatness evaluation models.

The database must support incremental development, historical accuracy, data traceability, and reproducible analysis.

2. Initial Data Entities

2.1 Players

The database must represent individual footballers.

Initial information may include:

Unique player identifier
Full name
Commonly used name
Date of birth
Country of birth, when known
Primary nationality, when documented
A player’s identity must be independent of the clubs they represented.

2.2 Clubs

The database must represent football clubs.

Initial information may include:

Unique club identifier
Club name
Country
Foundation year, when known
Clubs must be stored independently from players.

2.3 Seasons

The database must represent defined football seasons.

Initial information may include:

Unique season identifier
Season label
Start year
End year
The database must support both single-calendar-year and cross-calendar-year seasons.

2.4 Competitions

The database must represent football competitions.

Initial information may include:

Unique competition identifier
Competition name
Competition category
Geographic or organizational scope
Individual competition editions will be modeled in greater detail as the database develops.

2.5 Club Tenures

The database must represent relationships between players and clubs over time.

Initial information may include:

Unique tenure identifier
Player identifier
Club identifier
Start date or year
End date or year
The system must permit a player to represent multiple clubs and return to a previously represented club.

2.6 Player Season Statistics

The database must represent recorded performances by player, club, season, and competition.

Initial statistics may include:

Unique statistical record identifier
Player identifier or associated club tenure
Club identifier
Season identifier
Competition identifier
Appearances
Goals
Assists, where available
Minutes played, where available
The exact relationships and unique constraints will be finalized in the relational schema.

A missing statistic must not automatically be interpreted as zero.

3. Functional Requirements

DB-FR-001: The system shall store unique player records.

DB-FR-002: The system shall store unique club records.

DB-FR-003: The system shall represent historical club tenures.

DB-FR-004: The system shall organize selected performance statistics by season and competition.

DB-FR-005: The system shall support retrieving an individual player’s recorded club history.

DB-FR-006: The system shall support filtering player statistics by club, season, and competition.

DB-FR-007: The system shall support simple comparisons between players using available statistics.

DB-FR-008: The database shall support future expansion without requiring that all anticipated features be implemented immediately.

4. Data Integrity Requirements

Every major entity shall have a unique primary key.
Relationships shall use foreign keys where appropriate.
Numeric statistics shall not permit logically invalid negative values.
Unknown information shall remain distinguishable from confirmed values of zero.
Duplicate statistical records shall be prevented according to clearly defined record identity rules.
Missing historical information shall be permitted when appropriate.
Database relationships shall enforce referential integrity.
5. Historical Data Considerations

Historical football records may be incomplete or inconsistent.

The database must ultimately support documenting data provenance, source discrepancies, uncertainty, and limitations.

Statistics from different historical eras must not be assumed to have identical coverage or definitions.

6. Future Expansion

Potential future entities include:

National teams
International appearances and performances
Player positions and positional history
Individual awards
Team honors
Match-level statistics
Competition editions
Data sources and citations
Historical context
Evaluation model versions
Calculated greatness scores
These additions are outside the initial implementation scope.

7. Initial Acceptance Criteria

The first database prototype will be considered successful when:

All six initial tables are created with appropriate keys and constraints.
Foreign-key relationships can be explained and verified.
A small, manually curated football dataset is entered.
Players and their clubs can be retrieved using SQL.
Statistics can be retrieved by season and competition.
At least one multi-table JOIN produces correct results.
Missing values and basic integrity rules behave as intended.
The schema and sample queries are documented.
8. Outstanding Design Questions

The following decisions must be resolved before finalizing the SQL schema:

How should football seasons spanning two calendar years be represented?
How should multiple club tenures for the same player be distinguished?
Should player statistics refer directly to club tenures or separately to players and clubs?
How should competition-specific seasons and editions be represented?
How should unknown statistics differ from confirmed zeros?
How should the database preserve original source information?
Which footballers and seasons should constitute the initial sample dataset?


Next Activity: Develop the entity-relationship diagram and refine the relational schema.