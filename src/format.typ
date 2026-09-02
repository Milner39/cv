#import "private.typ": candidate


#let format(body) = {
  set document(
    author: candidate.full-name,
    title: candidate.full-name + " - Apprentice Software Engineer CV",
  )

  set page(
    paper: "a4",
    margin: (
      x: 1.5cm,
      y: 1.4cm,
    ),
  )

  set text(
    font: "Arial",
    size: 10pt,
  )

  show title: set align(center)
  show title: set text(size: 2em, weight: "bold")

  show heading.where(level: 1): set text(size: 1.2em, weight: "regular")

  show link: set text(fill: blue)
  show link: it => underline(it, extent: 1pt)

  body
}
