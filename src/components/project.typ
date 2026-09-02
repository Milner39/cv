#import "../format.typ": base-size, format
#show: format

#import "../utils.typ": clean-link



#let project(title, date, technologies, url, body) = {
  set grid(
    row-gutter: base-size(0.8),
  )

  [
    #grid(
      columns: (1fr, auto),
      rows: (auto, auto),

      //
      [#strong[#title]], align(right)[#strong[#date]],
      //
      [#technologies], align(right)[#link(url, clean-link(url))],
      //
    )

    #pad(left: base-size(0.8))[#body]
  ]
}
