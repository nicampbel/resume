
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Nicholas Campbell"
#let locale-catalog-page-numbering-style = context { "Nicholas Campbell - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in May 2026"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "Source Sans 3"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-partial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Source Sans 3"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Source Sans 3"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-small-caps-for-name = false
#let design-header-connections-font-family = "Source Sans 3"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-nested-bullet = "-"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.6cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 3.0cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 3.0cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-nested-bullet,
  spacing: design-highlights-vertical-space-between-highlights,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let bullet-entry(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: 0pt,
    indent: 0pt,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #if design-header-small-caps-for-name [
    #smallcaps(it.body)
  ] else [
    #it.body
  ]
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-partial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Nicholas Campbell

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Stellenbosch, South Africa],
  [#box(original-link("mailto:campbellnicholas573@gmail.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)campbellnicholas573\@gmail.com])],
  [#box(original-link("https://nicampbel.github.io/resume")[#fa-icon("link", size: 0.9em) #h(0.05cm)nicampbel.github.io\/resume])],
  [#box(original-link("https://linkedin.com/in/nicholas-campbell")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)nicholas-campbell])],
  [#box(original-link("https://github.com/nicampbel")[#fa-icon("github", size: 0.9em) #h(0.05cm)nicampbel])],
)
#connections(connections-list)



== Education


// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 3.0cm,
  left-content: [#strong[MEng \(Cum Laude\)]],
  middle-content: [
    #strong[Stellenbosch University], Mechatronic Engineering
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Thesis: An Architecture for a Federated Digital Twin System for an Automotive Enterprise \(80\%\)],[Conducted in close collaboration with BMW IT Hub South Africa],[Presented conference paper at SOHOMA 2025, Aix-en-Provence, France \(Oct 2025\)],)
  ],
  right-content: [
    2024 – 2025
  ],
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 3.0cm,
  left-content: [#strong[BEng]],
  middle-content: [
    #strong[Stellenbosch University], Mechatronic Engineering
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Best Final Year Biomedical Project — Institute of Biomedical Engineering \(Wearable Cardiopulmonary Exercise System, 90\%\), Dec 2023],)
  ],
  right-content: [
    2020 – 2023
  ],
)



== Experience


#two-col-entry(
  left-content: [
    #strong[SpatialEdge], Junior Data Engineer
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Migrated legacy data infrastructure to a cloud-native architecture on GCP, ingesting on-premises relational databases, SaaS platforms \(Salesforce, Jira\), ERP systems, and internal case management systems into BigQuery],[Architected and deployed an automated Salesforce → BigQuery ingestion pipeline using Python and BigQuery Data Transfer Service; built a CLI utility that auto-generates YAML configs from the Salesforce API, reducing new-asset onboarding from hours to minutes],[Engineered BigQuery optimisations — transforming standard views into sharded tables and using table cloning to provide high-performance writable environments without additional storage costs],[Automated GitLab CI\/CD pipelines to streamline deployment cycles and synchronise configurations with cloud infrastructure, incorporating dual-stage validation and POPIA compliance tagging],[Led production deployments and participated fully in Agile sprint ceremonies],)
  ],
  right-content: [
    2026 – present
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[BMW IT Hub South Africa], Graduate Researcher
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Collaborated with multiple stakeholders to derrive business requirements, transalating them into technical requirements for a system.],[Designed software architectures integrating heterogeneous digital twin platforms across the vehicle lifecycle, applying cloud services and knowledge graphs for DevOps integration and lifecycle analytics.],[Participated in the BMW Automotive IT Colloquium \(Jun 2025\) on AI, Digital Twins, and Automation; contributed to a hackathon building a VS Code extension that integrates an LLM with the GitHub API to enhance developer efficiency across the DevOps lifecycle],)
  ],
  right-content: [
    2024 – 2025
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Stellenbosch University], Head Teaching Assistant — Mechatronics 424
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Oversaw execution of Mechatronics 424 group projects; coordinated demonstrators, managing tasks, timelines, and team communication],)
  ],
  right-content: [
    2025 – 2025
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Zutari], Engineering Intern
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Rotated through Industrial Automation and Water teams],[Developed a GeoFencing application in Ignition Perspective using phone-based location data to demonstrate safety and control strategies],)
  ],
  right-content: [
    2022 – 2023
  ],
)



== Projects


#two-col-entry(
  left-content: [
    #strong[Personal Finance Tracker]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Full-stack personal finance dashboard built with Next.js \(TypeScript\), Supabase \(PostgreSQL\), and deployed on Vercel; ingests bank transactions nightly via a Gmail Apps Script integration],[Engineered a nightly ETL pipeline \(raw → prepared\) with multi-currency FX conversion, a three-pass categorisation engine \(rules → LLM → manual overrides\), and Vercel Cron Jobs for scheduling],[Features net worth tracking, budget management, recurring transaction detection, and a GitHub-style spend heatmap across 8 dashboard pages],)
  ],
  right-content: [
    2026
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Wearable Cardiopulmonary Exercise System]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Designed, built, and tested a low-cost mobile CPET system with wireless real-time data streaming up to 90 m; strong correlation with reference system],[Awarded Best Final Year Biomedical Project by the Institute of Biomedical Engineering \(90\%\)],)
  ],
  right-content: [
    2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[GeoFencing Application]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Built a concept demonstrator in Ignition Perspective during a vacation-work period at Zutari, using phone-based GPS data to implement safety and control strategies for the Industrial Automation team],)
  ],
  right-content: [
    2023
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Analog Audio Amplifier]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Designed, built, and tested a class AB 2-channel audio amplifier outputting 8W as part of Electronics 315 \(undergraduate mechatronics\)],)
  ],
  right-content: [
    2023
  ],
)



== Skills


#one-col-entry(
  content: [#strong[Languages:] Python, SQL, JavaScript, C]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Databases:] BigQuery, PostgreSQL, MongoDB, Firebase, Supabase]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Cloud & Infrastructure:] Google Cloud Platform, Apache Airflow, GitLab CI\/CD, GitHub Actions, Docker; some experience with AWS & Azure]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Data Engineering:] ETL pipeline development, data warehouse optimisation, CI\/CD automation]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Mechatronics:] Embedded systems, CAD, control systems, signal processing]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Domain Knowledge:] Systems integration, software architectures for data aggregation, digital twins, knowledge graphs]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Professional:] Agile methodology, sprint planning, cross-functional collaboration, technical documentation, production deployment management]
)


== Awards


#one-col-entry(
  content: [#strong[Best Final Year Biomedical Project:] Institute of Biomedical Engineering, Dec 2023 — Wearable Cardiopulmonary Exercise System \(90\%\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Data School Hackathon — 2nd Place:] Standard Bank & Mobalyz, Aug 2023 — real-time driver risk-scoring system]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Golden Key Society:] Invited 2021, 2022, 2023]
)


