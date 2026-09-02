#import "../format.typ": base-size, format
#show: format



#let education(institution, date, title, body) = {
  set grid(
    row-gutter: base-size(0.8),
  )

  [
    #grid(
      columns: (1fr, auto),
      rows: (auto, auto),

      //
      [#strong[#institution]], align(right)[#strong[#date]],
      //
      [#title]
      //
    )

    #pad(left: base-size(0.8))[#body]
  ]
}
