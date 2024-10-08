
#import "/meta-environments/env-templates.typ": *

= Large Format Laser

The Large Format Laser can etch or cut various materials with precision.

== Notes

=== Safety

*Do not leave the laser running unattended.* Lasers can cause fires. If your workpiece catches fire and the fire is not handled promptly, the fire can get out of control, and create an extreme hazard. Always keep watch over your running job, and be ready to extinguish any small fires with the nearby spray bottle, and/or hit the emergency stop if the laser goes out of control.

*Keep the laser door closed during normal operation.* The door protects those nearby from any possible  eye damage or skin burns should the laser hit any reflective material. 

*Make sure the fan is running before cutting or etching.* Running the laser on certain materials can produce gasses and make the studio environment unpleasant: the fans will pull the gasses outside. 

// https://ehs.mit.edu/wp-content/uploads/MITEHS_Laser_Cutter_Guidance.pdf
// https://www.cncsourced.com/guides/laser-cutter-safety-hazards/

=== Common Hazards

Some materials may heat up enough from the laser to catch fire. In case of a small fire, use the water spray bottles to quickly douse any small flames. 
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

#let pro_materials = csv("/data-reference/large_format_laser/prohibited_materials.csv").map(l => l.slice(0,-1))
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

#let app_materials = csv("/data-reference/large_format_laser/rabbit_approved_materials.csv").map(l => ((l.at(0),) + (l.at(1),) + (l.at(5),) + (l.at(8),)))

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

=== Front Quarter View

#figure(
  image("./images/large_format_laser-front_quarter-annotated.png", width: 100%),
  caption: [Annotated front-quarter view of the large format laser.],
)

=== Control Panel

#figure(
  image("./images/large_format_laser-control_panel-default.jpeg", width: 60%),
  caption: [The control panel for the large format laser in the default view.],
)
<large_format_laser-control_panel>

=== On/Off Switch

Turn the key to the right (clockwise) to power on the laser.

Turn the key to the left (counter-clockwise) to power off the laser.

=== Emergency Stop Switch

Press the emergency stop switch to power off the laser.

To re-enable the laser, pull up on the emergency stop button while twisting clockwise.

=== Lid

The lid must be closed for the laser to fire.

Always close the lid gently to avoid damaging the laser tube.

Check to make sure that nothing is in the way (pieces of paper, material scraps, etc.) that may keep the lid open and interrupt the laser.

=== Lens Carriage

The lens carriage moves the laser over the workpiece during a cut.

=== Bed

The bed supports the workpiece. The bed can be raised and lowered to adjust the focus of the laser.

=== Control Panel

Use the control panel to adjust the bed and lens carriage, set the origin, and other functions.

Many functions can also be used through LightBurn.

=== Spray Bottle

A spray bottle filled with water is kep on the right side of the cabinet. Use the spray bottle to quickly douse small material fires.

=== Magnets

A collection of magnets are kept on the left side of the  cabinet. Use these magnets to anchor the workpiece to the bed.

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
+ Press the *←* (right arrow) and *→* (left arrow) buttons to align the focus gauge to the second ring of the lens carriage.\
 _The right arrow lowers the bed, and the left arrow raises the bed._
+ Press the *Esc* button to return to the main screen.

#figure(
  image("./images/rabbit-focus_block.jpeg", width:60%),
  caption: [Lens carriage aligned with the focus gauge (40mm).],
)

=== Set the Origin
<set-the-origin>

+ Position the laser head over the workpiece at the location you want to set as a boundry for your art. \
  _Use the directional buttons to move the laser head across the bed._
- #h(0.48em)_Optional:_ Press the *Pulse* button to verify the exact location.
2. Press the *Origin* button to set the origin point for the job.

=== Set up the Job in LightBurn
<set-up-the-job-in-lightburn>

_These steps detail loading a single vector art file into LightBurn, and using that file to run a job with the laser. LightBurn is capable of much more: with LightBurn, we can load, manipulate, and compose multiple images into one job. For more about LightBurn, please see @software-lightburn. _

==== Import the Art

+ Open LightBurn on the computer connected to the large format laser.
+ Click *File > Import*.
+ Select the art file to import.

The art will be automatically placed on the LightBurn canvas. You may need to zoom and/or pan the view to see all of the art.

==== (Optional) Manipulate the Art

LightBurn is a capable image editor, and has many features that a specific to preparing artwork for the laser. 

Work that is commonly done in LightBurn prior to cutting or etching:

- Duplicating the art to cut multiple copies.
- Putting portions of the art into layers, for different cuts and/or ordering the cuts.

==== Set the Reference Origin

Set the reference origin in LightBurn with the Job Origin tool:

#figure(
  image("./images/lightburn-ss-job_origin.png", height: 1in),
  caption: [The Job Origin tool, currently set with the origin at the upper left.],
)

==== Set the Speed and Power

In the *Cuts/Layers* panel, each layer will have a listed speed and power in the *Spd/Pwr* column.

These settings must be adjusted for the material (wood, acrylic, natural leather) and purpose (cutting or etching). To adjust the speed and power settings:

+ Click on the value in this column to bring up the *Cut Settings Editor* dialog box.
  #figure(
    image("./images/lightburn-ss-cut_settings-top_half.png", width:60%),
    caption: [The top half of the Cut Settings Editor dialog box.],
  )
+ Use this dialog box to adjust the *Speed* and *Max Power* settings for the cut.
+ Click *OK*.

See @rabbit-speed-and-power-settings for good starting speed and power values for materials.


=== Run the Job on the Laser
<run-the-job-on-the-laser>

+ Check the footprint of your job.\
  _In LightBurn, press the Rectangular *Frame* button to command the laser to trace out the box boundary of the job, or the Circular *Frame* button to trace out the exact boundary of the job. The laser will trace out the area of the job. Make sure that the traced path does not leave the media, or run over any of the hold-down magnets._
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

=== Speed and Power Settings For Common Materials
<rabbit-speed-and-power-settings>

#block[

#set text(size: 8pt)

#let app_materials = csv("/data-reference/large_format_laser/rabbit_approved_materials.csv").map(l => if l.at(6) != "" { ((l.at(0),) + (l.at(2),) + (l.at(3),) + (l.at(4),) + (l.at(6),) + (l.at(7),) )} else {}).filter(l => l != none)

#let table_header = app_materials.remove(0)

#table(
  columns: (15em, auto, auto, auto, auto, auto),
  align: (col, row) => (left+top,center+top,center+top,center+top,center+top,center+top).at(col),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  table.header(..table_header.map(h => strong(h))),
  table.hline(),
  ..app_materials.flatten()
)
]

=== Sources for Materials
<sources-for-materials>

A small selection of acrylic and plywood is available for purchase at the Protohaven shop.

#block[

#set text(size: 8pt)

#let app_materials = csv("/data-reference/large_format_laser/rabbit_approved_materials.csv").map(l => if l.at(-1) != "" { ((l.at(0),) + (l.at(-1),))} else {}).filter(l => l != none)

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