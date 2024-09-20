#import "/meta-environments/env-templates.typ": *

#import "./glossary/glossary_terms.typ": *

#show: doc => class_handout(
  title: "Millwork Clearance",
  category: "Wood",
  number: "103",
  clearances: ("Dust Collection", "Jointer", "Resaw Bandsaw", "Planer", "Drum Sander", "Router Table"),
  instructors: ("Sarah Nielsen",),
  authors: ("Sarah Nielsen", "Paul Mazaitis"),
  draft: true,
  doc
)

// TODO
//
// [ ] Test the images to make sure they resolve well with a B&W printer

= Welcome

Welcome to the Millwork and Joinery class at Protohaven!

#set heading(offset:1)

#include "/common-policy/content/shop_rules.typ"
#include "/common-policy/content/tool_status_tags.typ"
#include "/common-policy/content/filing_a_tool_report.typ"


#set heading(offset:0)

#pagebreak()

= Millwork and Joinery Safety

- Always use eye protection.\
  _The machines covered in this class can cause pieces of wood to move unpredictably, and at high speed._
- Always use hearing protection.\
  _Power tools can be loud enough to permanently damage your hearing._
- Do not wear loose clothing, long sleeves, jewelry, or gloves.\
  _They will get caught in moving parts and cause severe harm._
- Wear closed-toe footwear.
- Clean as you go, and keep the floor clean of accumulated debris and sawdust.
- Use the appropriate dust collection.
- Maintain a balanced stance at all times.\
  _Do not lean into the cut, or overreach._
- Disconnect the power before servicing a machine. \
  _Unplug any power tool before changing blades, bits, or abrasives._
- Cuts should always be made *with the grain*. \
  _Cutting against the grain leads to tearout and chatter. Extreme cases may lead to kickback, or the tool may bind._
- If any adjustment crank or knob feels stiff, #warning([*STOP*]). Check the lock knobs and look for accumulated sawduct that is interfering with the movement.

If you feel unsure of something, feel free to ask!

#pagebreak()

= Introduction

== Learning Objectives

This class focuses on power tools used to preparing and shaping lumber.

After taking this class, you should be comfortable with:

- Preparing a square face and edge on the jointer.
- Cutting down stock to width on the resaw bandsaw.
- Thinning stock to parallel faces on the thickness planer.
- Smoothing stock with the drum sander.
- Shaping stock with the router table.

== Millwork and Joinery Terminology

#bow_term
#cup_term
#twist_term
#wind_term
#crook_term
#check_term
#fence_term
#gullet_term
#kerf_term
#set_term
#swarf_term
#table_term
#square_term
#flat_term
#push_block_term
#push_pad_term

// = Project Plan
// 
// Prepare a piece of stock, and then shape it on the router table:
// 
// + Joint a face and side of a piece of rough lumber.
// + Resaw the workpiece into thinner boards.
// + Surface plane the workpiece for thickness and a parallel face.
// + Drum sand the workpiece for thickness and finish.
// + Profile the edges of the workpiece with the router table.

= Tools

#set heading(offset:1)

#include "/common-tools/woodshop_dust_collection.typ"

#include "/common-tools/jointer.typ"

#include "/common-tools/resaw_band_saw.typ"

#include "/common-tools/planer.typ"

#include "/common-tools/drum_sander.typ"

#include "/common-tools/router_table.typ"

#set heading(offset:0)

= Resources

#emph([Additional resources go here:
  
  - Websites?
  - Books/Magazines?
  - YouTube Channels?
])

= Acknowledgments

Some definitions used in this document were sourced from the Wikipedia article _Wood Warping_:

https://en.wikipedia.org/wiki/Wood_warping

The images of wood defects were sourced from Design and Technology Online:

https://wiki.dtonline.org/index.php/File:DefectsLabelled.png