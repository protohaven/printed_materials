
#import "/meta-environments/tool-inclusion.typ": *

= Vertical Metal Band Saw

The vertical meal band saw can remove large amounts of material from a workpiece. 

== Notes

=== Use

In general, use of the vertical metal bandsaw is limited to cutting either mild steel or aluminum. A comprehensive chart of permitted materials is inside the upper cabinet.
  
A good rule of thumb is to only cut material that is at least as thick as the height of three teeth on the saw blade.  The will reduce the chances of a tooth catching the top edge of the workpiece too deeply. There are better methods for cutting thin materials (see the SHeetmetal classes for more).
  
// === Consumables

// blades?  


=== Materials

This tool can be used to cut:

- mild steel
- aluminum
- brass

This tool must not be used to cut:

- Ordinary tool steel
- High speed steel
- Stainless steel
  
== Parts of the Vertical Metal Band Saw

=== Front Quarter View

#figure(
  image("./images/band_saw-metal-vertical-front_quarter-annotated.png", width: 100%),
  caption: [An annotated front quarter view of the vertical metal band saw.]
)

=== On/Off Switch

Press the *on* button to start the saw.

Press the *off* button to stop the saw.

=== Low/High Range Shift Lever 

The low/high range shift lever changes the gearing for cutting aluminum (low) and steel (high).

#warning("Do not use this lever while the saw is running.") Turn off the saw before making any changes to the speed range.

=== Variable Speed Crank

The variable speed crank adjusts the speed of the saw blade within the selected speed range.

#warning("Do not turn this crank while the saw is stopped.") Only make speed adjustments when the blade is moving under power.

=== Fence

Used the optional fence to register the workpiece a specific distance from the blade.

=== Table Tilt

The table can be tilted to support angled cuts.

#figure(
  image("./images/band_saw-metal-vertical-table_tilt-annotated.png", width: 100%),
  caption: [Annotated view of the vertical metal band saw table tilt mechanism.]
)

To tilt the table left or right, loosen the two screws under the back of the table. Use the angle guide to set the necessary angle.

To tilt the table front to back, loosen the four screws under the right and left sides of the table.

Always re-tighten and screws under the table before making a cut.


=== Upper Blade Guide Lock Knob

Use the upper blade guide lock knob to release or lock the upper blade guide during setup.

Use caution when releasing the blade guide: it is very heavy, and may cause injury or damage to the machine if not properly supported when released.

=== Upper Blade Guide

The upper blade guide can be moved up and down to cover the unused part of the blade during a cutting operation.

Always cover as much of the blade as possible for a particular cut, leaving a 1/4" gap between the bottom of the blade guide and the top of the workpiece. Test the workpiece clearance first with the saw turned off. Be careful of workpieces with complicated profiles: make sure that all parts of the workpiece will clear the upper balde guide. 

=== Work Lamp Switch 

Turn on the work lamp for better illumination during a cut.

== Basic Operation

=== Setting Up

+ Plug in the vertical metal band saw.
+ Loosen the guard screw to free the blade guard.\
  _Be careful: the guard is heavy, and may drop unexpectedly._  
+ Set the blade guard to just above the height of the workpiece.
+ Tighten the guard screw to lock the blade guard in place.
+ Check the blade alignment with the guides. \
  _The blade guides should be close to but not touching the blade, and should still turn freely. 
// There should be .02" between blade and guides.
  Make sure that the blade guides sit behind the teeth._
+ Turn on the work light.

=== Setting the Speed

First, *set the speed range shift lever to _high_ or _low_* as appropriate for the workpiece material.\

Make sure that the gearing is fully engaged in the new setting: you may need to manually advance the drive wheel to make sure the gears properly mesh.

The drive wheel is found in the bottom cabinet door to the right of the lever. Fully engaging the drive wheel can be difficult, make sure the gears are properly meshed before cutting. Gears that are not fully meshed will cause blade slippage.

Second, *set the speed crank to an appropriate speed* for the material you are cutting.

A table of appropriate speeds follows:

#block[
  
  #set text(size: 11pt)
  
  #let app_materials = csv("/data-reference/band_saw-metal-vertical/band_saw-metal-vertical-materials.csv")
  
  // We have to do a custom table header for this one
  
  #let _ = app_materials.remove(0)
  #let _ = app_materials.remove(0)
  
  #let table_header = (
    table.cell(
      colspan:6,
      align: center,
      inset: 18pt,
      text(weight: "bold", size: 11pt,[Blade Speed (M/m)]),
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

// Include materials chart here

=== Workholding

- Support the workpiece with the fence during the cut, if possible.
- If the fence cannot support the workpiece, hold the workpiece firmly during the cut. Hold the workpiece on both sides of the cut if it is safe to do so.

=== Making a Cut

+ Turn on the saw.
+ Using the fence or with a firm grip, bring the workpiece up to the blade.
+ Push the workpiece gently into the blade with constant pressure.\
  _Go slowly. A gentle, consistent pressure will yield a better cut, and protect the workpiece and the tool._ 
+ Adjust pressure during the cut as needed.\
  _Excessive pressure should not be used. Notify staff if the blade is not cutting properly._
+ Use gentle pressure at the end of the cut. 
+ Turn off the saw.

Wait until the blade has completely stopped before starting cleanup.

=== Cleaning Up

+ Use a chip brush to clean off the table.
+ Sweep up any chips and dust in the surrounding area.
+ Turn off the work light.
+ Unplug the vertical metal band saw.

== Resources

// == Acknowledgements

