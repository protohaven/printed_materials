
#import "/meta-environments/class_handouts.typ": *

#show: doc => class_handout(
  title: "Basic Operation",
  category: "Laser",
  number: "101",
  clearances: ("Rabbit Large Format Laser",),
  instructors: ("Someone",),
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  draft: true,
  doc
)

// Content goes here


= Welcome

Welcome to the Laser Basic Operation class at Protohaven!

#set heading(offset:1)

#include "/common-policy/shop_rules.typ"
#include "/common-policy/tool_status_tags.typ"
#include "/common-policy/filing_a_tool_report.typ"

#set heading(offset:0)

#pagebreak()




= Introduction

This class is an introduction to the large format lasers. The large format lasers can make precise parts out of flat stock, and etch graphics and text onto flat surfaces. The large format lasers are handy when you need a complicated shape cut with precision.

Some example large format laser projects:

  - Make a custom wooden box
  - Design a jigsaw puzzle
  - Put a logo on a surface

== Learning Objectives

After this class, you will be able to:

  - Set up and safely operate the large format lasers
  - Use LightBurn software to load and control a job
  - Handle emergency situations
  - Choose appropriate materials for your projects

== Safety
  
  // Important safety notes for this particular class
  
  Large format laser cutters use a very power laser to precisely cut and etch material on the laser bed. The lasers generate enough heat to create a fire risk with some materials, and some materials by release fumes when cut or etched.
  
  Never leave a job running unattended: always be ready to stop the laser if something goes wrong.
  
  If you feel unsure of something, feel free to ask!

== Terminology

// Use new glossary system for this

= Tools

#set heading(offset:1)

 #include "/common-tools/laser-large_format.typ"


#set heading(offset:0)

= Software

#set heading(offset:1)

#include "/common-software/inkscape.typ"
#include "/common-software/lightburn.typ"

#set heading(offset:0)
= Concepts

#set heading(offset:1)

#include "/common-concepts/image_types.typ"

#set heading(offset:0)

= Resources

== Internet Forums

  - https://forum.laseruser.com/
  - https://sawmillcreek.org/forumdisplay.php?8-Laser-Engraving-General-Topics

// == Acknowledgments