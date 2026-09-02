#import "../../format.typ": format
#show: format

#import "./title.typ": cv-title
#import "./contact.typ": contact



#let heading() = [
  #cv-title()
  #contact()
]
