// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Nicholas Campbell",
  title: "Nicholas Campbell - CV",
  footer: context { [#emph[Nicholas Campbell -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 2cm,
  page-bottom-margin: 2cm,
  page-left-margin: 2cm,
  page-right-margin: 2cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 3.0cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 3.0cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.6cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 2,
  ),
)


= Nicholas Campbell

#connections(
  [#connection-with-icon("location-dot")[Stellenbosch, South Africa]],
  [#link("mailto:campbellnicholas573@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[campbellnicholas573\@gmail.com]]],
  [#link("https://nicampbel.github.io/resume", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[nicampbel.github.io\/resume]]],
  [#link("https://linkedin.com/in/nicampbel", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[nicampbel]]],
  [#link("https://github.com/nicampbel", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[nicampbel]]],
)


== Education

#education-entry(
  [
    #strong[Stellenbosch University], Mechatronic Engineering

    - Thesis: An Architecture for a Federated Digital Twin System for an Automotive Enterprise (80\%)

    - Conducted in close collaboration with BMW IT Hub South Africa

    - Presented conference paper at SOHOMA 2025, Aix-en-Provence, France (Oct 2025)

  ],
  [
    2024 – 2025

  ],
  degree-column: [
    #strong[MEng (Cum Laude)]
  ],
)

#education-entry(
  [
    #strong[Stellenbosch University], Mechatronic Engineering

    - Best Final Year Biomedical Project — Institute of Biomedical Engineering (Wearable Cardiopulmonary Exercise System, 90\%), Dec 2023

  ],
  [
    2020 – 2023

  ],
  degree-column: [
    #strong[BEng]
  ],
)

== Experience

#regular-entry(
  [
    #strong[SpatialEdge], Data Engineer

    - Currently migrating on-premises data infrastructure to a cloud-native architecture on GCP, creating a centralised lake-house for data analystics and ML use cases.

    - Migrated legacy data infrastructure to a cloud-native architecture on GCP, ingesting on-premises relational databases, SaaS platforms (Salesforce, Jira), ERP systems, and internal case management systems into BigQuery

    - Architected and deployed an automated Salesforce → BigQuery ingestion pipeline using Python and BigQuery Data Transfer Service; built a CLI utility that auto-generates YAML configs from the Salesforce API, reducing new-asset onboarding from hours to minutes

    - Engineered BigQuery optimisations — transforming standard views into sharded tables and using table cloning to provide high-performance writable environments without additional storage costs

    - Automated GitLab CI\/CD pipelines to streamline deployment cycles and synchronise configurations with cloud infrastructure, incorporating dual-stage validation and POPIA compliance tagging

    - Led production deployments and participated fully in Agile sprint ceremonies

  ],
  [
    2026 – present

    

    1 year

  ],
)

#regular-entry(
  [
    #strong[BMW IT Hub South Africa], Graduate Researcher

    - Collaborated with multiple stakeholders to derrive business requirements, transalating them into technical requirements for a system.

    - Designed software architectures integrating heterogeneous digital twin platforms across the vehicle lifecycle, applying cloud services and knowledge graphs for DevOps integration and lifecycle analytics.

    - Participated in the BMW Automotive IT Colloquium (Jun 2025) on AI, Digital Twins, and Automation; contributed to a hackathon building a VS Code extension that integrates an LLM with the GitHub API to enhance developer efficiency across the DevOps lifecycle

  ],
  [
    2024 – 2025

    

    1 year

  ],
)

#regular-entry(
  [
    #strong[Stellenbosch University], Head Teaching Assistant — Mechatronics 424

    - Oversaw execution of Mechatronics 424 group projects; coordinated demonstrators, managing tasks, timelines, and team communication

  ],
  [
    2025 – 2025

    

    1 year

  ],
)

#regular-entry(
  [
    #strong[Zutari], Engineering Intern

    - Rotated through Industrial Automation and Water teams

    - Developed a GeoFencing application in Ignition Perspective using phone-based location data to demonstrate safety and control strategies

  ],
  [
    2022 – 2023

    

    1 year

  ],
)

== Projects

#regular-entry(
  [
    #strong[Personal Finance Tracker]

    - Full-stack personal finance dashboard built with Next.js (TypeScript), Supabase (PostgreSQL), and deployed on Vercel; ingests bank transactions nightly via a Gmail Apps Script integration

    - Engineered a nightly ETL pipeline (raw → prepared) with multi-currency FX conversion, a three-pass categorisation engine (rules → LLM → manual overrides), and Vercel Cron Jobs for scheduling

    - Features net worth tracking, budget management, recurring transaction detection, and a GitHub-style spend heatmap across 8 dashboard pages

  ],
  [
    2026

  ],
)

#regular-entry(
  [
    #strong[Wearable Cardiopulmonary Exercise System]

    - Designed, built, and tested a low-cost mobile CPET system with wireless real-time data streaming up to 90 m; strong correlation with reference system

    - Awarded Best Final Year Biomedical Project by the Institute of Biomedical Engineering (90\%)

  ],
  [
    2023

  ],
)

#regular-entry(
  [
    #strong[GeoFencing Application]

    - Built a concept demonstrator in Ignition Perspective during a vacation-work period at Zutari, using phone-based GPS data to implement safety and control strategies for the Industrial Automation team

  ],
  [
    2023

  ],
)

#regular-entry(
  [
    #strong[Analog Audio Amplifier]

    - Designed, built, and tested a class AB 2-channel audio amplifier outputting 8W as part of Electronics 315 (undergraduate mechatronics)

  ],
  [
    2023

  ],
)

== Publications

#regular-entry(
  [
    #strong[An Architecture for a Federated Digital Twin System for an Automotive Enterprise]

    Nicholas Campbell, Prof. Anton H. Basson, Prof. Karel K. Kruger

    #link("https://doi.org/10.1007/978-3-032-18786-4_15")[10.1007\/978-3-032-18786-4\_15] (Proceedings of SOHOMA (Service Oriented, Holonic and Multi-agent Manufacturing Systems for Industry of the Future) 2025)

  ],
  [
    May 2026

  ],
)

== Skills

#strong[Languages:] Python, SQL, JavaScript, C

#strong[Databases:] BigQuery, PostgreSQL, Oracle, MySQL

#strong[Cloud & Infrastructure:] Google Cloud Platform (BQ, GCS, Dataproc), Apache Airflow, GitLab CI\/CD, GitHub Actions, Docker; some experience with AWS & Azure

#strong[Data Engineering:] ETL pipeline development, data warehouse optimisation, CI\/CD automation, Spark

#strong[Mechatronics:] Embedded systems, CAD, control systems, signal processing

#strong[Domain Knowledge:] Systems integration, software architectures for data aggregation, digital twins, knowledge graphs

#strong[Professional:] Agile methodology, sprint planning, cross-functional collaboration, technical documentation, production deployment management

== Awards

#strong[Best Final Year Biomedical Project:] Institute of Biomedical Engineering, Dec 2023 — Wearable Cardiopulmonary Exercise System (90\%)

#strong[Data School Hackathon — 2nd Place:] Standard Bank & Mobalyz, Aug 2023 — real-time driver risk-scoring system

#strong[Golden Key Society:] Invited 2021, 2022, 2023
