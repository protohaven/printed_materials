#import "/meta-environments/env-posters.typ": *

#show: doc => large_poster(
  title: "Prohibited Materials",
  category: "Large Format Laser",
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  doc
)

// Content goes here

#block[

#set text(size: 32pt)

#let pro_materials = csv("/data-reference/large_format_laser/laser_materials-prohibited.csv").map(l => l.slice(0,-1))
#let table_header = pro_materials.remove(0)

#table(
  columns: (auto, 1fr),
  stroke: none,
  align: left,
  inset: (
    x: 48pt,
    y: 16pt,
  ),
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..pro_materials.flatten()
)

]