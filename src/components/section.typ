#import "../format.typ": base-size, format
#show: format



#let section(title, body) = {
  show heading: it => block(
    above: 0pt,
    below: 0pt,
    it,
  )

  show divider: it => block(
    above: base-size(0.6),
    below: 0pt,
    it,
  )

  [
    #heading(title)
    #divider()
    #block(above: base-size(1), below: base-size(1.6), [#body])
  ]
}
