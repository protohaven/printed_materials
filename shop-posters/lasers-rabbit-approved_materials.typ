#import "/meta-environments/env-posters.typ": *

#set page(
  footer: align(right,[_(over...)_]),
)


#show: doc => small_poster(
  title: "Approved Materials",
  category: "Rabbit Large Format Laser",
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  doc
)

// Content goes here


#block[

#set text(size: 9pt)

// #let app_materials = csv("/data-reference/large_format_laser/rabbit_approved_materials.csv").map(l => if l.at(6) != "" { ((l.at(0),) + (l.at(2),) + (l.at(3),) + (l.at(4),) + (l.at(6),) + (l.at(7),) )} else {}).filter(l => l != none)

#let app_materials = csv("/data-reference/large_format_laser/rabbit_approved_materials.csv").map(l =>  ((l.at(0),) + (l.at(2),) + (l.at(3),) + (l.at(4),) + (l.at(6),) + (l.at(7),) )).filter(l => l != none)

#let table_header = app_materials.remove(0)

#table(
  columns: (16em, auto, auto, auto, auto, auto),
  align: (col, row) => (left+top,center+top,center+top,center+top,center+top,center+top).at(col),
  stroke: none,
  inset: 4pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..app_materials.flatten()
)
]