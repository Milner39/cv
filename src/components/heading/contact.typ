#import "../../format.typ": format
#show: format

#import "../../private.typ": candidate



#let clean-link(url) = {
  url.replace("https://", "").replace("http://", "").replace("www.", "")
}



#let contact-details = (
  link("tel:" + candidate.phone, candidate.phone),
  link("mailto:" + candidate.email, candidate.email),
  link(candidate.github, clean-link(candidate.github)),
  link(candidate.linkedin, clean-link(candidate.linkedin)),
).join(
  "  " + sym.bar.v + "  ",
)

#let contact() = {
  set align(center)

  [
    #candidate.full-area

    #contact-details
  ]
}
