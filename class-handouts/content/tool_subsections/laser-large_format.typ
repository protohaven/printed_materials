
#import "/environments/env-templates.typ": *

= Large Format Laser

(Overview paragraph(s))

== Notes

=== Safety

=== Common Hazards

(Putting out small fires with the spray bottle, large files with a fire extinguisher)

(Toxic outgassing)

=== Care

Use care when opening and closing the cover; do not let the cover slam closed. (Can hurt the laser tube)


// === Use
// 
// === Consumables
// 
// === Tooling

=== Materials

==== Prohibited Materials

Some materials are dangerous to etch or cut in the laser cutter: the process may cause a fire hazard, or introduce dangerous gasses into the studio space.

The following materials are prohibited for use in the laser cutter:

#block[

#set text(size: 9pt)

#let pro_materials = csv("/reference/large_format_laser/laser_materials-prohibited.csv").map(l => l.slice(0,-1))
#let table_header = pro_materials.remove(0)

#table(
  columns: (auto, auto),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header([*#table_header.at(0)*],[*#table_header.at(1)*]),
  table.hline(),
  ..pro_materials.flatten()
)

]


// #table(
//   columns: (15em, 1fr),
//   stroke: none,
//   inset: 5pt,
//   fill: (_, y) => if calc.odd(y) { color.tablegrey },
//   table.header([*Prohibited Material*], 	[*Hazard*]),
//   table.hline(),
//   [ABS],	[Emits cyanide gas, melts, bursts into flame],
//   [Chlorinated plastics \ (PVC, vinyl, artificial leather, Moleskine notebooks, polymer clay/Sculpey)],	[Emits chlorine gas],
//   [Coated Carbon Fiber],	[Emits dangerous fumes],
//   [Fiberglass],	[Emits dangerous fumes],
//   [Galvanized Metal],	[Emits dangerous fumes],
//   [HDPE\ (milk bottle plastic)],	[Catches fire & melts],
//   [Mirrored Surfaces\ (including uncoated metal)],	[Will not cut, reflects laser beam],
//   [Polycarbonate/Lexan],	[Cuts poorly, absorbs laser, discolors, may catch fire],
//   [Polypropylene Foam\ (foam core, Styrofoam)], 	[Catches fire],
//   [Pressure Treated Wood],	[Emits dangerous fumes],
// )

==== Approved Materials

#block[

#set text(size: 9pt)

#let app_materials = csv("/reference/large_format_laser/laser_materials-approved.csv").map(l => l.slice(0,-1))
#let table_header = app_materials.remove(0)

#table(
  columns: (15em, auto,auto,auto),
  align: (col, row) => (left+top,center+top,center+top,left+top).at(col),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header([*#table_header.at(0)*],[*#table_header.at(1)*],[*#table_header.at(2)*],[*#table_header.at(3)*]),
  table.hline(),
  ..app_materials.flatten()
)
]

== Parts of the Laser Cutter

=== 

== Basic Operation

=== Setting Up the Laser

turn on

make sure cooling is working

make sure the exhaust fan is running

secure workpiece to grid

check focus

=== Workholding

Use magnets to secure the workpiece to the grid.

Make sure that the laser's path won't cause the laser to cut the magnets, or for the laser head to crash into the magnets.

=== Focusing the Lens

+ Press Z(Control Panel 2) to change to bed height control.
+ Use ↔ Control Panel 1 to align the lens carriage to the focus gauge (Right raises bed, left lowers)
+ Select Esc(Control Panel 3) to return to the main menu.

Setting the Origin

+ Use the directional arrows(Control Panel 2) to jog the lens carriage to the desired location.
- Optional: Press Pulse(Control Panel 8)to verify the exact location.
+ Select Origin(Control Panel 5) to set the Origin
+ Select Frame(Control Panel 6) to check the footprint of job. (framing can also be managed from Lightburn control)



=== Setting up the Job in Lightburn

Load art into light burn

=== Running the Job on the Laser

+ Check the footprint of your job
+ Start your file
+ Monitor the machine until the job is complete and cleanup

While the job is running, remain nearby the laser to make sure nothing goes wrong.

=== Cleaning Up

+ Power off the Laser
+ Reset any modified computer settings to default
+ Vacuum the interior so material does not build up beneath the honeycomb
+ Note any maintenance needs or concerns on the tag and at protohaven.org/maintenance
+ Recycle waste in the single-stream scrap bins
+ Empty the bin when full

