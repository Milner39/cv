#let candidate = (
  name: ("FORENAME", "SURNAME"),
  area: ("CITY", "COUNTY", "COUNTRY"),
  phone: "+XX XXXXX XXXXXX",
  email: "email@example.com",
  github: "https://github.com/example",
  linkedin: "https://www.linkedin.com/in/example",
)


#let candidate = (
  candidate
    + (
      full-name: candidate.name.join(" "),
      full-area: candidate.area.join(", "),
    )
)
