#import "../format.typ": format
#show: format



#let section(title, body) = {
  show heading: it => block(
    above: 1em,
    below: 0em,
    it,
  )

  show divider: it => block(
    above: 0.5em,
    it,
  )

  [
    #heading(title)
    #divider()
    #body
  ]
}
