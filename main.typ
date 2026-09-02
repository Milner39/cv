#import "src/format.typ": base-size, format
#show: format

#import "src/private.typ": candidate
#import "src/components/heading/index.typ": heading
#import "src/components/section.typ": section
#import "src/components/keyed-list.typ": keyed-list



#heading()

#section[Summary][
  Software Engineer with 1 year of experience in permanent roles specialising in front-end web development using VueJS and Angular. 5 years in full-stack web development from on-and-off freelance jobs during education. First to receive an Apprenticeship role from my current employer.
]

#section[Skills][
  #keyed-list((
    (
      "Front-end",
      "React, Angular, Vue, Svelte, HTML, JavaScript, TypeScript, CSS, SCSS.",
    ),
    (
      "Back-end",
      "Java, Node, Deno, Rust, Python, Solidity.",
    ),
    (
      "Other",
      "Git, SVN, Jenkins, Puppeteer, Vite.",
    ),
  ))
]

#section[Work Experience][
  #lorem(50)
]

#section[Education][
  #lorem(50)
]
