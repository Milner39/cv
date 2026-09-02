#import "../../format.typ": base-size, format
#show: format

#import "../../utils.typ": clean-link
#import "../../private.typ": candidate



#let contact-details = (
  link("tel:" + candidate.phone, candidate.phone),
  link("mailto:" + candidate.email, candidate.email),
  link(candidate.github, clean-link(candidate.github)),
  link(candidate.linkedin, clean-link(candidate.linkedin)),
).join(
  "  " + sym.bar.v + "  ",
)

#let contact(spacing: base-size(0.8)) = {
  set align(center)
  stack(spacing: spacing, [#candidate.full-area], [#contact-details])
}
