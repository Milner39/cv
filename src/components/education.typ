#import "../format.typ": base-size, format
#show: format



#let education(title, date, institution, body) = {
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
      [#institution]
      //
    )

    #pad(left: base-size(0.8))[#body]
  ]
}
