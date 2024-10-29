
#import "/meta-environments/env-templates.typ": *

#show: doc => class_handout(
  title: "Custom Wood Boxes",
  category: "Laser",
  number: "114",
  clearances: ("Rabbit Large Format Laser",),
  instructors: ("Someone",),
  authors: ("Paul Mazaitis <paul@mazaitis>",),
  draft: true,
  doc
)

= Welcome

Welcome to the Laser Box Making class at Protohaven!

#set heading(offset:1)

#include "/common-policy/shop_rules.typ"
#include "/common-policy/tool_status_tags.typ"
#include "/common-policy/filing_a_tool_report.typ"

#set heading(offset:0)

#pagebreak()




= Introduction

This class is an introduction to the large format lasers, with a focus on a box-making project. 

With the right project file, we can laser-cut the parts of a box that use finger joints to fit together. Because the laser is so precise, we can tune the cut to make tight, strong joints.

== Learning Objectives

After this class, you will be able to:

  - Set up and safely operate the large format lasers
  - Use LightBurn software to load and control a job
  - Handle emergency situations
  - Choose appropriate materials for your projects
  - Make and assemble a box

== Safety
  
  // Important safety notes for this particular class
  
  Large format laser cutters use a very power laser to precisely cut and etch material on the laser bed. The lasers generate enough heat to create a fire risk with some materials, and some materials by release fumes when cut or etched.
  
  Never leave a job running unattended: always be ready to stop the laser if something goes wrong.
  
  If you feel unsure of something, feel free to ask!

== Terminology

// Use new glossary system for this

= Making a Box

== Overview

For this project, we will:

+ Set up a project template
+ Download the project file
+ Set up the material in the large format laser
+ Load and run the job
+ Assemble the box
+ Clean up

== Set Up a Project Template 

There are lots of online tools for generating project files that assemble into boxes. These tools allow us to customize the size, shape, and features of the box we want to make.

For this class, we will be using the web version of Florian Festi's `boxes.py` tool, hosted by the Bamberg Hackerspace:

  https://boxes.hackerspace-bamberg.de/?language=en
  
First, select a project you would like to make on the large format laser (there are a lot!). Click the project icon to get to the setting page for that project.

The settings will vary depending on project. Some common settings that you should set (or check):

- The _dimensions_ of the project can be altered to make a box that fits your needs.
- The _thickness_ setting should be the same as the thickness of the material you are cutting.
- The _format_ should be SVG. 
- The _burn_ setting may need to be adjusted for better fit.

Depending on the project, there may be other options you will want to adjust:

- There may be extensive settings for the _finger joints_ - smaller finger joints may make a stronger join, but will increase job time.
- There may be additional features that can be added, like lids, handles, etc.

You can preview the project file by clicking the *Generate* button. Take a look at the project file and make sure nothing is off (no dimension is way out of spec, etc.)

#pagebreak()

== Download the Project File

When you are happy with the project file, click the *Download* button. This will save your project file to local disk.

== Set Up the Material in the Large Format Laser

To use the project file, we must transfer it to the desktop computer dedicated to the large format laser we want to use. 

The easiest way to transfer the file is with a USB memory stick: 

+ Copy your project file to a memory stick.
+ Safely eject the memory stick.
+ Insert the memory stick into one of the large format laser computers.
+ Copy the project file from the memory stick onto the local drive.
+ Safely eject the memory stick. 

== Load and Run the Job

With the project file on the local disk, follow the steps in 

// + Start up LightBurn
// + In the menubar, click *File > Open*
// + Change the drop-down menu next to the File Name field to *All supported*
// + Navigate to your project file, and highlight it
// + Click *Open*

Follow the steps in @large-format-laser-basic-operation to set up and run the large format laser.

== Assemble the box

Once you have your project pieces, assemble them into your new box!

You may need to put the pieces together in a specific order.

If the fit is too tight, try gently removing material with sandpaper to improve the fit, or gently tapping on the parts with a rubber mallet to coax the pieces together. 

== Clean up

Cleaning up is an important step! We want to make sure the area is clean and free of debris for the people who want to use the laser next. 

- Make sure that there are no cutouts stuck on the honeycomb and the bed is free of dust.
- Put reusable scrap in the scrap bins, and throw out all other debris into the studio garbage cans.
- If you want to keep your project file, make sure you transfer it to a personal USB drive.


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


== Tools for Generating Projects
  
  - https://makerdesignlab.com/tutorials-tips/online-file-generators-for-laser-cutting/

// == Acknowledgments