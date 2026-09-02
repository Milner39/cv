#import "../format.typ": base-size, format
#show: format



#let keyed-list(items) = {
  terms(
    ..items.map(((key, body)) => terms.item(
      [#key],
      [#body],
    )),
  )
}
