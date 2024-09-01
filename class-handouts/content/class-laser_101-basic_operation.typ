
#import "/environments/env-templates.typ": *

#import "./glossary/glossary_terms.typ": *

#show: doc => class_handout(
  title: "Basic Operation",
  category: "Laser",
  number: "101",
  clearances: ("Rabbit Lasers",),
  instructors: ("Someone",),
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  draft: true,
  doc
)

// Content goes here


= Welcome

Welcome to the Introduction to Lathe class at Protohaven!

#set heading(offset:1)

#include "/common-policy/content/shop_rules.typ"
#include "/common-policy/content/tool_status_tags.typ"
#include "/common-policy/content/filing_a_tool_report.typ"

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
 #include "tool_subsections/laser-large_format.typ"
// lightburn
// inkscape

#set heading(offset:0)

= Software


= Concepts



= Resources

== LightBurn

LightBurn software has a YouTube page (https://www.youtube.com/@lightburnsoftware7189/) with lots of content to help with projects. For those new to laser cutting and etching, these videos are a good place to start:

- Getting Started With LightBurn: Set up & First Project \ 
  https://www.youtube.com/watch?v=v3RDzOrlCTM
- LightBurn UI Walkthrough \ 
  https://www.youtube.com/watch?v=uzFsrUwONbw
- LightBurn Cut Settings \ 
  https://www.youtube.com/watch?v=nybhYtjElQU

== Inkscape

- Inkscape Tutorial: Complete Starter Guide for New Users (with chapters) \ 
  https://www.youtube.com/watch?v=fzk-suGcqrc

A comprehensive tutorial series for Inkscape is available from TJ Free: https://www.youtube.com/playlist?list=PLqazFFzUAPc5lOQwDoZ4Dw2YSXtO7lWNv

Some videos from the series that are good places to start:

- Inkscape Lesson 1 - Interface and Basic Drawing \ 
  https://www.youtube.com/watch?v=8f011wdiW7g
- Inkscape Lesson 10 - Trace Images with Bezier Tool \ 
  https://www.youtube.com/watch?v=sagrkdmC_BI
- Inkscape Lesson 11 - Trace Bitmap Tool (Convert Raster to SVG) \ 
  https://www.youtube.com/watch?v=E7HwLTQu2FI

// == Acknowledgments