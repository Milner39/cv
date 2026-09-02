#import "../../format.typ": base-size, format
#show: format

#import "./title.typ": cv-title
#import "./contact.typ": contact



#let heading() = {
  block(below: base-size(2), [
    #cv-title(below: base-size(1.2))
    #contact(spacing: base-size(0.8))
  ])
}
