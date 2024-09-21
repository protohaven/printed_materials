#import "/meta-environments/env-branding.typ": *


/* 
 * ORNAMENTS
 *
 * Functions that ornament text: highlights, boxes, etc.
 */

#let safety_hazard_box(content) = {

  rect(width: auto, stroke: color.warning,
  [
    #text(color.warning, weight: "bold", [Safety Warning!])

    #content
  ]
  )
}

#let warning(content) = {
  text(color.warning, weight: "bold", content)
}

#let license_block() = {
  rect(
    width: 100%, 
    inset: 2em,
    stroke: 2pt + color.lightgrey,  
    grid(
      columns: (110pt, 1fr),
      gutter: 1em,
      image("/common-graphics/licensing/by-nc-sa.svg"),
      [This work is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/]
    )
  )
}