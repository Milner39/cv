#import "../format.typ": base-size, format
#show: format



#let work-experience(title, date, role, type, body) = {
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
      [#role], align(right)[#emph[#type]],
      //
    )

    #pad(left: base-size(0.8))[#body]
  ]
}
