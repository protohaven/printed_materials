
#import "/meta-environments/env-templates.typ": *

#import "./glossary/glossary_terms.typ": *

#show: doc => class_handout(
  title: "Introduction to Metalworking",
  category: "Metal",
  number: "101",
  clearances: ("Chop Saw (Metal)",
               "Vertical Band Saw (Metal)", 
               "Drill Press (Metal)",
               "Metal Grinder Dust Collection",
               "Bench Grinders",
               "Disk Grinder",
              ),
  instructors: ("Someone",),
  authors: ("Paul Mazaitis <paul@mazaitis.org>",),
  draft: true,
  doc
)

// Retitle the tools to Chop Saw (Metal)

// Content goes here


= Welcome

Welcome to the Introduction to Metalworking class at Protohaven!

#set heading(offset:1)

#include "/common-policy/shop_rules.typ"
#include "/common-policy/tool_status_tags.typ"
#include "/common-policy/filing_a_tool_report.typ"

#set heading(offset:0)

#pagebreak()

= Metalworking Safety

Do not work in the metal shop wearing anything that could end up pulling you into a machine. Do not wear:

- Long hair
- Loose sleeves
- Loose clothing
- Gloves



If you feel unsure of something, feel free to ask!

= Introduction

== Learning Objectives


== Terminology

#swarf_term

// = Classroom Activities


= Tools

#set heading(offset:1)

#include "/common-tools/chop_saw_metal.typ"
#include "/common-tools/drill_press_metal.typ"
#include "/common-tools/band_saw_metal_vertical.typ"
#include "/common-tools/metal_grinder_dust_collection.typ"
#include "/common-tools/bench_grinders.typ"
#include "/common-tools/disk_grinder.typ"

#set heading(offset:0)

= Resources
