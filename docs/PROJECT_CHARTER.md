Football Greatness Index (FGI)

Project Charter

Version: 0.1
Date Established: October 30, 2026
Project Status: Planning and Initial Architecture
Primary Language: Python
Initial Database: SQLite
Version Control: Git and GitHub



1. Executive Summary

The Football Greatness Index (FGI) is a long-term software engineering and sports analytics project dedicated to evaluating and comparing association football players across different historical eras, playing positions, clubs, national teams, and competitions.

The project will combine historical research, relational database systems, statistical analysis, mathematical modeling, and software engineering to develop a comprehensive framework for evaluating footballing greatness.

FGI will begin as a local Python and SQL application and may eventually expand into a public-facing analytical platform.

2. Mission Statement

To develop a transparent, reproducible, evidence-based, and continuously improvable framework for evaluating footballing greatness across generations.

The project will recognize that greatness cannot be completely reduced to statistics, achievements, or mathematical formulas.

3. Long-Term Vision

The Football Greatness Index will eventually seek to provide:

A comprehensive database of historical footballers.
Detailed player profiles and career records.
Historical and positional comparisons.
A structured mathematical greatness model.
Overall and positional player rankings.
Interactive comparisons and visualizations.
Transparent explanations of scoring methodologies.
Research documentation supporting its conclusions.
A public-facing application.
4. Primary Objectives

Objective A — Database Infrastructure

Develop a relational database containing footballers, clubs, national teams, seasons, competitions, performances, statistics, and achievements.

Objective B — Evaluation Methodology

Develop a structured model for evaluating individual ability, achievements, peak performance, longevity, international impact, and historical influence.

Objective C — Historical Fairness

Investigate methods for comparing players across different eras, playing positions, tactical environments, and statistical conditions.

Objective D — Analytical Software

Develop Python applications capable of collecting, validating, processing, analyzing, and comparing football data.

Objective E — Transparency

Ensure that evaluation criteria, calculations, assumptions, limitations, and data sources are documented.

Objective F — Technical Education

Use FGI as a long-term practical learning environment for Python, SQL, database design, statistics, data science, testing, and software architecture.

5. Preliminary Evaluation Framework

The initial conceptual model consists of six categories:

Category

Preliminary Weight

Individual Ability

40%

Achievements

20%

Peak Performance

15%

Longevity

10%

International Impact

10%

Historical Influence

5%

Total

100%

These weights are preliminary hypotheses, not finalized mathematical rules.

The methodology will require research, operational definitions, sensitivity testing, and validation before its implementation.

6. Guiding Principles

Transparency: Scores and rankings must have understandable explanations.

Evidence: Evaluations should rely on documented and identifiable sources.

Fairness: The methodology should account for differences in positions, eras, and available statistics.

Reproducibility: Results should be reproducible using identified data and model versions.

Modularity: Database operations, data processing, scoring, and presentation should remain logically separated.

Maintainability: Code quality, documentation, and testing are central project requirements.

Intellectual Humility: Rankings represent model-based assessments, not indisputable historical truths.

7. Initial Scope

The first functional prototype will include:

A documented project repository.
A small dataset of approximately 10–20 footballers.
An SQLite relational database.
Basic SQL queries.
Simple Python database integration.
Basic data validation and testing.
A foundation for future analytical development.
8. Activities Deferred to Later Phases

The initial version will not include:

Comprehensive all-time player rankings.
Advanced machine learning.
Real-time football data.
Automated large-scale data collection.
A production website.
Commercial services.
Complex cloud infrastructure.
9. Technology Strategy

Initial Technologies

Python
SQL
SQLite
Visual Studio Code
Git
GitHub
Markdown
Potential Future Technologies

PostgreSQL
pandas
NumPy
Matplotlib
Plotly
Jupyter
pytest
FastAPI
TypeScript
Technologies will be introduced gradually according to project requirements and developer readiness.

10. Development Strategy

FGI will follow an incremental, milestone-based development approach.

The project will prioritize understanding, correctness, maintainability, and reproducibility over rapid feature development.

Major architectural and methodological decisions will be documented.

AI assistance may support research, explanation, debugging, review, and architectural planning, while the project owner develops increasing independence in implementation.

11. Project Milestones

Milestone 0 — Project Foundation

Create the repository.
Establish directory structure.
Write the Project Charter.
Write the README.
Configure Git.
Publish the initial repository to GitHub.
Milestone 1 — Database Design

Identify primary database entities.
Define entity relationships.
Design the initial SQL schema.
Establish sample player records.
Practice foundational SQL queries.
Milestone 2 — Python Integration

Establish database connections.
Retrieve and display football records.
Develop basic database operations.
Introduce automated tests.
Milestone 3 — Analytical Prototype

Define measurable evaluation criteria.
Develop preliminary scoring functions.
Produce experimental comparisons.
Document limitations.
Milestone 4 — Methodological Refinement

Expand historical data coverage.
Develop positional and era adjustments.
Test alternative scoring models.
Improve validation and reproducibility.
Milestone 5 — Application Development

Develop rankings and comparison interfaces.
Introduce interactive visualizations.
Investigate API development.
Evaluate public deployment.
12. Initial Success Criteria

Milestone 0 is complete when:

The project has a dedicated local directory.
VS Code opens the correct workspace.
The directory structure is established.
The Project Charter is saved.
The README accurately describes the project.
Git ignore rules are configured.
The first Git commit is created.
The repository is visible on GitHub.
No application code is required for Milestone 0.

13. Project Risks

Principal risks include:

Incomplete historical statistics.
Bias toward modern players.
Subjectivity in greatness evaluation.
Difficulty comparing different playing positions.
Inconsistent historical competition structures.
Dataset licensing and attribution requirements.
Excessive project scope.
Analytical complexity exceeding data reliability.
These risks will be documented and addressed progressively.

14. Definition of Long-Term Success

FGI will be considered successful if it develops into a maintainable, reproducible, well-documented analytical system capable of producing defensible assessments of footballing greatness.

The system does not need to achieve universal agreement with its rankings.

A secondary measure of success is the practical technical competence developed through building the project.



Charter Status: Initial baseline
Next Milestone: Database Design