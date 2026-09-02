#import "../format.typ": format, base-size
#show: format



#let section(title, body) = {
  show heading: it => block(
    above: base-size(),
    below: base-size(),
    it,
  )

  show divider: it => block(
    above: base-size(),
    below: base-size(),
    it,
  )

  [
    #heading(title)
    #divider()
    #body
  ]
}
