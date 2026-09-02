#import "src/format.typ": base-size, format
#show: format

#import "src/private.typ": candidate
#import "src/components/heading/index.typ": heading
#import "src/components/section.typ": section
#import "src/components/keyed-list.typ": keyed-list
#import "src/components/work-experience.typ": work-experience
#import "src/components/education.typ": education



#heading()

#section[Summary][
  Software Engineer with 1 year of professional experience specialising in front-end web development using Vue and Angular, alongside 5 years of full-stack development experience through freelance work during education. Currently completing a degree apprenticeship in software engineering.
]

#section[Skills][
  #keyed-list((
    (
      "Front-end",
      "React, Angular, Vue, Svelte, HTML, JavaScript, TypeScript, CSS, SCSS.",
    ),
    (
      "Back-end",
      "Java, PHP, Node, Deno, Rust, Python, Solidity.",
    ),
    (
      "Other",
      "WordPress, Git, SVN, Jenkins, Puppeteer, Vite, Nix.",
    ),
  ))
]

#section[Work Experience][
  #work-experience(
    "Enigma Interactive",
    "Oct 2025 - Present",
    "Apprentice Software Developer",
    "Hybrid",
  )[
    #list(
      [
        Led the front-end and CMS development for a significant site redesign of downingstudents.com, leveraging Wordpress ACF (Advanced Custom Fields) to build reusable content components and provide a streamlined CMS experience for non-technical editors.
      ],
      [
        Developed reusable Vue components for the product pages of solopress.com, improving consistency and UX across the site and creating a more maintainable component structure for future development
      ],
      [
        Mentored graduate work experience students through development tasks, providing guidance on implementation, debugging and development workflows while helping them build confidence working on projects with deadlines.
      ],
      [
        Represented Enigma Interactive at careers events including STEMFest, speaking with students and attendees about software development, apprenticeships, and the company while presenting technical concepts to a non-technical audience.
      ],
    )
  ]
]

#section[Education][
  #education(
    "Newcastle College",
    "2025 - 2026",
    "BSc (Hons) Digital and Technology Solutions - Software Engineering",
  )[
    Completed Year 1 with a first before transferring provider.
  ]

  #education(
    "Gosforth Academy",
    "2023 - 2025",
    "A Levels",
  )[
    Mathematics: A\*, Physics: A, Computer Science: A
  ]

  #education(
    "Newcastle School for Boys",
    "2021 - 2023",
    "GCSEs",
  )[
    9 GCSEs including Mathematics (9), Computer Science (9), Physics (9), Biology (9), and Chemistry (8).
  ]
]

#section[Projects][

]
