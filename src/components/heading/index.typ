#import "../../format.typ": format
#show: format

#import "./title.typ": cv-title
#import "./contact.typ": contact



#let heading() = {
  [
    #cv-title(below: 0.6em)
    #contact(spacing: 1em)
  ]
}
