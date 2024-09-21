#import "/meta-environments/env-features.typ": *

= Drum Sander

The drum sander can be used to:

 - Flatten a board face.
 - Smooth a board face.
 - Reduce the thickness of thin stock.

== Notes

Always feed stock against the rotation of the drum.

A planer may be a better choice if a lot of material needs to be removed from a thick workpiece.

== Parts of the Drum Sander

// TODO image with parts
=== Full View

#figure(
  image("images/drum_sander-full_view-annotated.png", width: 100%),
  caption: [
    An annotated full view of the drum sander.
  ],
)

=== Sanding Drum Power Switch 

The sanding drum power switch turns the sanding drum motor on and off. 

=== Sanding Drum

Rotates as the workpiece advanced through the machine. Wrapped with a strip of abrasive (usually 80 grit sand paper) which is held in place on both sides with clips embedded in the drum. The abrasive should be inspected before each use to ensure that it is not scorched, overloaded, or loose on the drum.

=== Feed Table Speed Knob 

The feed table speed knob acts as the power switch and speed control for the feed table. Rotate the speed knob clockwise past the click to turn on the feed table. Once the feed table is moving, rotate the speed knob to adjust the speed of the feed table. Turn off the feed table by rotating the knob counter clockwise past the click. 

#warning("Make sure the drum motor is turned on before feeding a workpiece into the machine.")

=== Height Adjustment Crank

The height adjustment crank raises and lowers the sanding drum, adjusting the clearance between the sanding drum and the feed table.

=== Feed Table

The feed table moves the workpiece past the bottom of the sanding drum. If the feed table is pulling your workpiece to the left or right, tell the tech on duty.

// For techs only: The edge should be visually inspected before each use to make sure it is centered in the guide tracks.

== Replacing the Abrasive Strip on the Drum

You may wish to replace the abrasive strip on the drum:

- The abrasive strip on the drum is worn.
- You want to use an abrasive strip with a specific grit.

=== Sourcing Abrasive Strips

Abrasive strips are a consumable; you are welcome to use whatever is installed on the drum or left on the shelf beneath the drum sander. 

Protohaven sells pre-cut abrasive strips for the drum sander in the Protohaven Shop by the front desk. Check with the tech on duty for pricing and availability.

You are welcome to bring your own abrasive strips, but you will need to cut the appropriate bevel in the strip for the strip to fit the drum.

=== Removing an Abrasive Strip From the Drum

#let grid_setup = (columns: (1fr, 2in), gutter: 1em)

+ #grid(..grid_setup, 
    [Start with the drum lid closed.], 
    [#image("./images/drum_sander/removing/01-closed_lid.jpeg")]
  )
+ #grid(..grid_setup, 
    [Open the drum lid.], 
    [#image("./images/drum_sander/removing/02-open_lid.jpeg")]
  )
+ #grid(..grid_setup, 
    [Reach into the drum and find the lever for the right clamp.], 
    [#image("./images/drum_sander/removing/03-pull_right_clamp.jpeg")]
  )
+ #grid(..grid_setup, 
    [Pull up on the lever for the right clamp.], 
    [#image("./images/drum_sander/removing/04-right_clamp_pulled.jpeg")]
  )
+ #grid(..grid_setup, 
    [Loosen the tapered end of the paper.], 
    [#image("./images/drum_sander/removing/05-release_strip.jpeg")]
  )
+ #grid(..grid_setup, 
    [Pull the tapered end out of the drum.], 
    [#image("./images/drum_sander/removing/06-remove_strip.jpeg")]
  )
+ #grid(..grid_setup, 
    [Unwind the abrasive strip from the drum.], 
    [#image("./images/drum_sander/removing/07-unwind_strip.jpeg")]
  )
+ #grid(..grid_setup, 
    [The left clamp.], 
    [#image("./images/drum_sander/removing/08-left_clamp.jpeg")]
  )
+ #grid(..grid_setup, 
    [Lift the left clamp to release the abrasive strip.], 
    [#image("./images/drum_sander/removing/09-pull_left_clamp.jpeg")]
  )
+ #grid(..grid_setup, 
    [Pull the tapered end of the abrasive strip completely out of the drum.], 
    [#image("./images/drum_sander/removing/10-remove_strip.jpeg")]
  )
+ #grid(..grid_setup, 
    [The empty drum.], 
    [#image("./images/drum_sander/removing/11-empty_roller.jpeg")]
  )


=== Attaching an Abrasive Strip to the Drum

+ #grid(..grid_setup, 
  [Start with an empty drum.], 
  [#image("./images/drum_sander/adding/01-empty_roller.jpeg")]
)
+ #grid(..grid_setup, 
  [Lift the lever for the left clamp and insert a tapered end of the abrasive paper strip.], 
  [#image("./images/drum_sander/adding/02-pull_left_clamp.jpeg")]
)
+ #grid(..grid_setup, 
  [Wind the abrasive paper onto the drum.\
   _Leave a small gap between the edges of the paper as it winds on to the drum._ 
  ], 
  [#image("./images/drum_sander/adding/03-wind_paper.jpeg")]
)
// + #grid(..grid_setup, 
//   [STEP], 
//   [#image("./images/drum_sander/adding/04-rough_align_is_fine.jpeg")]
// )
+ #grid(..grid_setup, 
  [The last wind of the paper around the roll should have an 1/8 inch gap.], 
  [#image("./images/drum_sander/adding/05-leave_gap.jpeg")]
)
+ #grid(..grid_setup, 
  [Insert the hook tool into the right clamp lever.], 
  [#image("./images/drum_sander/adding/06-insert_hook_tool.jpeg")]
)
+ #grid(..grid_setup, 
  [Pull the hook up, and then turn the hook so that the shoulder rests on the drum.\
  _The shoulder should hold the paper in place._
  ], 
  [#image("./images/drum_sander/adding/07-pull_hook_up_and_over.jpeg")]
)
+ #grid(..grid_setup, 
  [Feed the end of the taper into the right clamp.], 
  [#image("./images/drum_sander/adding/08-strip_clamped_in_place.jpeg")]
)
+ #grid(..grid_setup, 
  [Release the clamp and remove the tool.], 
  [#image("./images/drum_sander/adding/09-remove_hook_tool.jpeg")]
)
+ #grid(..grid_setup, 
  [Check the winding of the abrasive paper.\
  _Retighten the strip as needed, making sure there is a gap between each winding of the abrasive strip._  
  ], 
  [#image("./images/drum_sander/adding/10-tighten_paper_leaving_gap.jpeg")]
)
+ #grid(..grid_setup, 
  [Pull the left clamp lever.\
  _Hold the paper to the drum to keep it from unspooling._
  ], 
  [#image("./images/drum_sander/adding/11-pull_up_on_left_clamp.jpeg")]
)
+ #grid(..grid_setup, 
  [Pull the taper into the drum to take up any slack in the abrasive paper.], 
  [#image("./images/drum_sander/adding/12-tighten_paper.jpeg")]
)
+ #grid(..grid_setup, 
  [The new abrasive strip is in place.\
  _Recheck the gaps between the windings to make sure the paper does not overlap._  
  ], 
  [#image("./images/drum_sander/adding/13-open_lid.jpeg")]
)
+ #grid(..grid_setup, 
  [Close the lid.], 
  [#image("./images/drum_sander/adding/14-closed_lid.jpeg")]
)

== Basic Operation

=== Setting Up

+ Open the cover.
+ Raise the drum using the Height Adjustment Crank. 
+ Place the workpiece below the drum.
+ Lower the drum until the drum barely touches the top of the workpiece. Check this by rotating the drum by hand. #warning("DO NOT TURN ON THE DRUM MOTOR.")\
  _Turn the crank slowly as pushing the drum into the workpiece can bend the machine casting._
+  Use the table feed to move the workpiece out from under the drum.
+  Close the cover.

=== Sanding

+ Turn on dust collection.
+ Open the blast gate.
+ Turn on the drum motor. 
+ Turn on the feed table and adjust the table speed.
+ Feed the workpiece once all the way through.
+ Adjust the drum height for the next pass and repeat as needed.

=== Cleaning Up

+ Turn off the feed table.
+ Turn off the sanding drum.
+ Dust off and sweep up dust as needed.
+ Close the blast gate.
+ Turn off the dust collection.\
  _If other members are still using the dust collector, leave it on._






