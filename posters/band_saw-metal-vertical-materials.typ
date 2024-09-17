#import "/environments/env-posters.typ": *
#import "diagbox.typ": *

#show: doc => small_poster(
  title: "Approved Materials",
  category: "Metal Shop",
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  doc
)

// Content goes here

#block[
  
  #set text(size: 12pt)
  
  #let app_materials = csv("/reference/band_saw-metal-vertical/band_saw-metal-vertical-materials.csv")
  
  // We have to do a custom table header for this one
  
  #let _ = app_materials.remove(0)
  #let _ = app_materials.remove(0)
  
  #let table_header = (
    table.cell(
      rowspan: 2,
      bdiagbox([Material],[Thickness (in)]),
    ),
    table.cell(
      colspan: 5,
      [Sawing Speed (M/min) for Specified Material & Thickness]
    ),
    [\<1/4],[1/4-1],[1-3],[3-6],[6+]
  )
  
  #table(
    columns: (2.23in, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: none,
    align: (col, row) => (left+top,right+top,right+top,right+top,right+top,right+top).at(col),
    inset: (
      x: 5pt,
      y: 5pt,
    ),
    fill: (_, y) => if calc.odd(y) { color.tablegrey },
    table.header(..table_header),
    table.hline(),
    ..app_materials.flatten()
  )

  
]