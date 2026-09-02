#import "../../format.typ": base-size, format
#show: format


#let cv-title(below: base-size(1.2)) = {
  show title: it => block(
    below: below,
    it,
  )

  [
    #title(context document.author.first())
  ]
}
