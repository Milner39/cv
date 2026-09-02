#import "../../format.typ": base-size, format
#show: format

#import "./title.typ": cv-title
#import "./contact.typ": contact



#let cv-heading() = {
  block(width: 100%, below: base-size(2), [
    #cv-title(below: base-size(1.2))
    #contact(spacing: base-size(0.8))
  ])
}
