
#import "/environments/env-templates.typ": *

= Large Format Laser

The Large Format Laser can etch or cut various materials with precision.

== Notes

=== Safety

- Do not leave the laser running unattended.
- Keep the laser door closed during normal operation.
- Make sure the fan is running before cutting or etching.

_TODO: anything about laser safety?_

=== Common Hazards

Some materials may heat up enough from the laser to combust. In case of a small fire, use the water spray bottles to quickly douse any small flames. 
// In the case of a larger fire, use the fire extinguisher in the kitchen area.

Some materials may produce toxic gas when cut or etched. Make sure the material you are cutting or etching is not listed in the @laser-prohibited-materials subsection.

Depending on the material, laser cutting may produce sharp edges. Always handle materials carefully after they have been cut.

=== Care

Use care when opening and closing the cover; do not let the cover slam closed. The shock of letting the cover fall freely onto the chassis can damage the laser tube.


// === Use
// 
// === Consumables
// 
// === Tooling

=== Materials

Protohaven carries a small selection of acrylic and plywood sheets for use with the large format lasers. 

A list of @sources-for-materials is included in the References section.

==== Prohibited Materials
<laser-prohibited-materials>

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
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..pro_materials.flatten()
)

]

==== Approved Materials

#block[

#set text(size: 9pt)

#let app_materials = csv("/reference/large_format_laser/laser_materials-approved.csv").map(l => l.slice(0,-2))
#let table_header = app_materials.remove(0)

#table(
  columns: (15em, auto,auto,auto),
  align: (col, row) => (left+top,center+top,center+top,left+top).at(col),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..app_materials.flatten()
)
]

== Parts of the Laser Cutter

=== 

== Basic Operation

+ @set-up-the-laser
+ @laser-workholding
+ @focus-the-lens
+ @set-the-origin
+ @set-up-the-job-in-lightburn
+ @run-the-job-on-the-laser
+ @cleaning-up


=== Set Up the Laser
<set-up-the-laser>

+ Turn on the large format laser.
+ Make sure chiller is powered on and working. \
  _Look for the green status light on the front of the chiller._
+ Make sure the exhaust fan is running.
+ Carefully open the lid.\
  _The lid is heavy; letting the lid slam closed will damage the laser._
+ Secure the workpiece to the grid. \
  _use the provided mounting magnets to hold the workpiece in place._
+ Position the laser head over the workpiece. \
  _Use the directional buttons to move the laser head across the bed._

=== Workholding
<laser-workholding>

Use magnets to secure the workpiece to the grid.

Make sure that the laser's path won't cause the laser to cut the magnets, or for the laser head to crash into the magnets.

=== Focus the Lens
<focus-the-lens>

Use a focus block on the workpiece to set the height of the lens and bring it into focus. 

+ Press the *Z/U* button to change to bed height control.\
  _The screen will display a menu with *Z move* highlighted in blue._
+ Press the *←* (right arrow) and *→* (left arrow) buttons to align the height of the lens carriage to the focus gauge.\
 _The right arrow lowers the bed, and the left arrow raises the bed._
+ Press the *Esc* button to return to the main menu.

=== Set the Origin
<set-the-origin>

+ Position the laser head over the workpiece at the location you want the cut or etch to start. \
  _Use the directional buttons to move the laser head across the bed._
- #h(0.48em)_Optional:_ Press the *Pulse* button to verify the exact location.
2. Press the *Origin* button to set the origin point for the job.

=== Set up the Job in LightBurn
<set-up-the-job-in-lightburn>

_These steps detail loading a single vector art file into LightBurn, and using that file to run a job with the laser. LightBurn is capable of much more: with LightBurn, we can load, manipulate, and compose multiple images into one job. For more about LightBurn, please see @software-lightburn. _

(Load art into light burn)
(Set the reference origin in lightburn)


//  RASTER VS. VECTOR Rastered data is an image that is made of pixels. Much like an inkjet printer, the laser will scan the artwork on a scale from black to white. The laser will vary the number of dots it fires depending on the tone of each pixel.
// 
// Common file formats like .jpeg, .gif, and .png are all raster data.
// 
// Vectored data is made of paths that form lines and shapes. They contain mathematical data that allows the laser to trace the path like following coordinates on a map. This allows the laser to cut or score a line as well as etch a filled shape.
// 
// Common file formats like .ai, .dxf, and .svg are all vector data. 


=== Run the Job on the Laser
<run-the-job-on-the-laser>

+ Check the footprint of your job.\
  _In LightBurn, press the MUMBLE button to command the laser to trace out the box boundary of the job, or the MUMBLE button to trace out the exact boundary of the job. The laser will trace out the area of the job. Make sure that the traced path does not leave the media, or run over any of the magnets._
+ Press the start button.
+ Monitor the machine until the job is complete.\
  _While the job is running, remain nearby the laser to make sure nothing goes wrong._

=== Cleaning Up
<cleaning-up>

+ Power off the Laser.
+ Reset any modified computer settings to default.
+ Vacuum the interior so material does not build up beneath the honeycomb.
+ Recycle waste in the single-stream scrap bins.

Report any maintenance needs or concerns at protohaven.org/maintenance, or by alerting a shop tech on duty.

If the single-stream scrap bins become full, alert a shop tech.

== Reference

=== Sources for Materials
<sources-for-materials>

#block[

#set text(size: 8pt)

#let app_materials = csv("/reference/large_format_laser/laser_materials-approved.csv").map(l => if l.at(5) != "" { ((l.at(0),) + (l.at(5),))} else {}).filter(l => l != none)

#let table_header = app_materials.remove(0)

#table(
  columns: (15em, auto),
  align: (col, row) => (left+top,left+top).at(col),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..app_materials.flatten()
)
]