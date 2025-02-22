#import "/meta-environments/tool-inclusion.typ": *


= Drum Sander

The drum sander can be used to:

 - Flatten a board face.
 - Smooth a board face.
 - Reduce the thickness of thin stock.

== Notes

The maximum depth of cut is a 1/4 turn of the hight adjustment crank. A 1/4 turn of the height adjustment crank is equal to 1/64" (0.4mm).

The minimum safe size for workpieces is 9" x 2" x 1/8". 

The drum sander and the planer cannot be operated at the same time: there is a switch on the wall to select which machine will use the circuit. 

Reduce snipe when sanding more than one board of the same thickness by feeding them into the sander with the front end of the second board touching the back end of the first board.

Run workpieces through at different positions left-to-right for even wear on the sandpaper.

A planer may be a better choice if a lot of material needs to be removed from a thick workpiece.

== Safety

*Do not edge sand workpieces.* 

*Do not stand directly in front of the sander's infeed area.* Workpieces may be kicked out of the drum sander at high speed.

*Do not sand boards smaller than 9" x 2" x 1/8".* Small workpieces cannot be safely sanded. //See the reference sign...

*Do not sand more than one board at a time.* Any slight height variation in any of the boards may cause one or some of the boards to be kicked out of the front of the drum sander.

*Do not let the motor draw excessive power.* If the sanding laod meter goes to 25 amsp or above, immediately hit the emergency stop button to shut down the machine, and alert a shop tech.

*Use a dust mask, hearing protection, and safety glasses.*

== Common Hazards

_Kickback_ is when a workpiece is propelled out of the machine by a spinning drum. Make sure that you and other shop members are clear of the front of the machine to be out of the way should kickback occur. Kickback can be caused by:

- Sanding more than one board at a time
- Taking too deep a cut
- Sanding a workpiece less than 9" x 2" x 1/8"

Fine dust left on the floor is a slip hazard. Always sweep the area after using the drum sander.

Excessively cupped, bowed, or twisted workpieces are unstable and unpredictable, and may be propelled from the machine.

== Materials

*Only wood should be used.* Do not put any other materials through the drum sander.

*Workpieces must be free of all metal.* Any nails, screws, staples, or other metal parts embedded in the wood can damage the machine. A portable metal detector is available at the front desk.

*Do not cut wet wood.* Workpieces over 20% moisture will clog the paper.

*Do not sand boards with finish or uncured glue applied.* Use a sacrificial piece of sandpaper to remove any uncured glue from the workpiece. Remove any layers of finish from the workpiece with the resaw bandsaw. Sanding boards with high resin content or applied finishes will quickly contaminate and clog sandpaper.

// == Consumables
// 
// TODO: are members changing paper?
// 
// 181.5" x 3" sandpaper for each drum. The general rule of thumb is to sand a workpiece with progressively higher grit numbers, with no one grit increase of more than 50. Avoid skipping grits; the larger the grit increase, the harder it will be to remove the scratches from the previous grit. Recommended grit combination: 36 + 80; 60 + 100; 80 + 120; 100 + 150
//     36, extra coarse: rough sawn boards, thickness sanding, glue removal
//     60, coarse: thickness sanding, glue removal
//     80–100, medium: removing planer marks and initial finish sanding
//     120–180, fine: finish sanding
// 3/4" strapping tape for securing the sandpaper to each drum

== Parts of the Drum Sander

=== Full View

#figure(
  image("images/drum_sander-full_view-annotated.png", width: 100%),
  caption: [
    An annotated full view of the drum sander.
  ],
)

=== Control Panel

#figure(
  image("images/drum_sander-control_panel-annotated.png", width: 100%),
  caption: [
    An annotated full view of the drum sander.
  ],
)

=== Emergency Stop

Push in the emergency stop button to immediately stop all motors on the machine.

To release the emergency stop, twist the button clockwise until it releases.

=== Sanding Drum Motor Control 

Press the green button to engage the sanding drum motor.

Press the red button to stop the sanding drum motor.

#warning("Make sure the drum motor is turned on before feeding a workpiece into the machine.")

=== Conveyor Motor Control

Press the green button to engage the conveyor motor.

Press the red button to stop the conveyor motor.

=== Conveyor Speed Control 

Adjust the conveyor speed control to change how quickly a workpiece is fed beneath the sanding drums. Start cuts with the speed control set to low (in the green range, below 4). 

Adjust the speed upward as needed. When increasing speed, monitor the sanding load meter the make sure that the power draw does not exceed safe operation.

=== Sanding Load Meter

The sanding load meter reported the draw on the motors in amps. Keep the load below 15 amps for normal operation. 

=== Conveyor

The conveyor pulls the workpiece past the bottom of the sanding drums.

=== Height Adjustment Crank

The height adjustment crank raises and lowers the conveyor table, adjusting the clearance between the sanding drum and the conveyor.

=== Lid

The lid protects the top of the sanding drums, and helps with dust collection.

Only run the drum sander with the lid lowered and locked in place with the left and right clasps.

=== Lid Clasps

There are two lid clasps, one each on the left and right sides of the lid.

Only run the drum sander with the lid lowered and locked in place with the left and right clasps.

=== Sanding Drums

There are two sanding drums on the drum sander, using progressive grits (80 grit and 120 grit).  The abrasives should be inspected before each use to ensure they are not clogged, torn, or loose on the drum.


== Basic Operation

=== Setting Up

+ Set the wall-mounted power switch to *Drum Sander*. \
  _Do not change the switch position if the planer is in use._  
+ Turn on dust collection. \
  _Dust collection must be enabled. If the drum sander is used without dust collection, the sandpaper will be immediately ruined._

=== Inspect the Sandpaper

+ Undo the latches on the left and right sides of the cover.
+ Open the cover. \
  _Hold the cover open: do not let it drop._
+ Inspect the sandpaper on both drums. \
  _If there are any clogs or tears, file a maintenance report._
+ Close the cover.
+ Latch both sides of the cover.

=== Sanding

+ Use the height adjustment crank to set the height of the conveyor table. \
  _The workpiece should fit comfortably under the lead roller. This will ensure that the sander will take a cut less than 1/64", as required._
+ Turn on the sanding drum motor. \
  _Ensure the sanding drum is spinning before loading work into the sander._ 
+ Turn on the conveyor motor, starting with a slow speed. \
  _The green areas of the speed control are recommended starting speeds._
+ Make light test passes to find an appropriate conveyor speed.
   - If the Sanding Load Meter gets too high (into the yellow or red, above 15 on the scale), decrease the speed or reduce the cut depth.
   - If the wood is burning, increase the speed or reduce the cut depth.
+ Do not adjust the height of the conveyor table by more than 1/4 turn per pass. \
  _Because of the spongy nature of the sand paper backing, adjusting the handle is not needed on every pass. Several passes can be taken for every adjustment of the handle._
+ Feed the workpiece through until desired thickness is reached.

=== Cleaning Up

+ Turn off the conveyor motor.
+ Turn off the sanding drum motor.
+ Inspect the sandpaper for any clogs or tears (see Inspect the sandpaper, above). \
  _If there are any clogs or tears, file a maintenance report._
+ Dust off and sweep up dust as needed.
+ Return the wall power switch to the center position.
+ Turn off the dust collection.\
  _If other members are still using the dust collector, leave it on._






