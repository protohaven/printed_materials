
#import "/meta-environments/env-templates.typ": *

#import "./glossary/glossary_terms.typ": *

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


= Safety

// Important safety notes for this particular class

If you feel unsure of something, feel free to ask!

= Introduction

== Learning Objectives



== Terminology



= Tools

#set heading(offset:1)

// #include "tool_subsections/TOOLNAME.typ"
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



// == Acknowledgments