#import "private.typ": candidate


#let base-size(..args) = {
  let mult = args.pos().at(0, default: 1)
  mult * 10pt
}


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
    size: base-size(),
  )

  show title: set align(center)
  show title: set text(size: base-size(2), weight: "bold")

  show heading.where(level: 1): set text(size: base-size(1.2), weight: "bold")
  show heading.where(level: 1): it => upper(it)

  show link: set text(fill: blue)
  show link: it => underline(it, stroke: 1pt)

  show divider: set line(stroke: 1.5pt)

  body
}
