#import "/environments/env-posters.typ": *

#show: doc => small_poster(
  title: "Approved Materials",
  category: "Vertical Metal Band Saw",
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  doc
)

// Content goes here

#block[
  
  #set text(size: 14pt)
  
  #let app_materials = csv("/reference/band_saw-metal-vertical/band_saw-metal-vertical-materials.csv")
  
  // We have to do a custom table header for this one
  
  #let _ = app_materials.remove(0)
  #let _ = app_materials.remove(0)
  
  #let table_header = (
    table.cell(
      colspan:6,
      align: center,
      inset: 18pt,
      text(weight: "bold", size: 18pt,[Blade Speed (M/m)]),
    ),
    table.cell(
      rowspan: 2,
      [*Material*],
    ),
    table.cell(
      colspan: 5,
      align: center,
      [#h(3em)*Thickness (in)*]
    ),
    [*\< 1/4*],[*1/4 – 1*],[*1 – 3*],[*3 – 6*],[*6 \<*]
  )
  
  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: none,
    align: (col, row) => (left+top,right+top,right+top,right+top,right+top,right+top).at(col),
    inset: (
      x: 5pt,
      y: 7pt,
    ),
    fill: (_, y) => if calc.odd(y) and y > 2 { color.tablegrey },
    table.header(..table_header),
    table.hline(),
    ..app_materials.flatten()
  )

  
]