#let candidate = (
  name: ("Finn", "Milner"),
  area: ("CITY", "COUNTY", "COUNTRY"),
  phone: "+XX XXXXX XXXXXX",
  email: "email@example.com",
  github: "https://github.com/Milner39",
  linkedin: "https://www.linkedin.com/in/example",
)


#let candidate = (
  candidate
    + (
      full-name: candidate.name.join(" "),
      full-area: candidate.area.join(", "),
    )
)
