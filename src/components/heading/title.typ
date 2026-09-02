#import "../../format.typ": format
#show: format


#let cv-title(below: 0.5em) = {
  show title: it => block(
    below: below,
    it,
  )

  [
    #title(context document.author.first())
  ]
}
