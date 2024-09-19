
#import "@preview/hydra:0.5.1": hydra, anchor

// Core colors and fonts for the design identity

#let color = (
  lightgrey: rgb(65%,65%,65%),
  midgrey: rgb(50%,50%,50%),
  darkgrey: rgb(38%,38%,38%),
  warning: rgb("#900000"),
  accent: rgb("#6EC7E2"),
  link: blue,
)

#let font = (
  title: "Noto Sans",
  sans: "Noto Sans",
  link: "Fira Mono",
)

/* ORNAMENTS
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




/*
 * Renders `content` with the module's text styling.  This is useful for content
 *  that is outside of the `template` container but which should be visually consistent.
 */
#let apply-text-styles(content) = {
    set text(
        font: font.sans
    )
    set par(
      leading: 0.8em,
    )
    show heading.where(level: 1): it => [
        #pagebreak(weak: true)
        #set text(size: 24pt, font: font.sans, number-type: "lining", weight: "bold",)
        #block(it.body)        
    ]
    show heading.where(level: 2): it => text(
        size: 18pt,
        font: font.sans,
        number-type: "lining",
        weight: "semibold",
        {
        v(0.6em)
        it.body
        }
    )
    show heading.where(level: 3): it => text(
        size: 14pt,
        font: font.sans,
        number-type: "lining",
        weight: "semibold",
        it.body
    )
    show heading.where(level: 4): it => text(
        size: 12pt,
        font: font.sans,
        number-type: "lining",
        weight: "semibold",
        it.body
    )

    show figure: it => align(center)[
      #set text(size: 9pt, font: font.sans)
      #it.body
      /*#it.supplement*/ #it.caption
    ]
    
    // Link support
    show link: it => {
     if type(it.dest) == str and it.dest.contains("http"){
        set text(font: font.link, size: 9pt)
        it
      } else if type(it.dest) != str {
        set text(color.link)
        it
      } else {
        set text(color.link)
        it
      }
    }
    
    // Reference support
    show ref: it => {
      if it.element.numbering == none {
        // Use your custom scheme
        link(it.target, it.element.body)
      } else {
        // Default `ref`
        it
      }
    }

    // Enums
    set enum(numbering: "1.a.")

    content
}


#let class_handout(
    title: "Handout",
    category: "CAT",
    number: "NUM",
    clearances: ("Oobler", "Spanger"),
    instructors: ("Someone",),
    authors: ("Someone","Someone Else"),
    date: datetime.today(),
    draft: false,
    wrapper: apply-text-styles,
    doc,
) = {

    set page(
      background: if draft {rotate(-44deg,
      {text(160pt, fill: rgb("EEEEEE"), [*DRAFT*]) 
        linebreak()
        text(60pt, fill: rgb("EEEEEE"), date.display())}
    )})
    
    set document(title: title, 
      author: authors,
      keywords: ("protohaven", "class"),
      date: date,
    )

    // Title page

    set text(
        font: font.sans,
    )

    align(center, image("../images/Protohaven-Logo-Horizontal-Color-959069212.png"))
    
    
    v(1in)
    
    stack(dir: ttb,
    text(weight: "bold", size: 20pt, color.midgrey, smallcaps("Class Notes")),
    v(1.2em),
    text(weight: "bold", size: 24pt, [#category #number: #title]),
    // v(3em),
    // if instructors.len() == 1 {
    //     text(weight: "bold", size: 18pt, mid_grey, smallcaps("Instructor"))
    //   } else {
    //     text(weight: "bold", size: 18pt, mid_grey, smallcaps("Instructors"))
    //   },
    // v(1.1em),
    // text(weight: "bold", size: 20pt, instructors.join(", ")),
    v(15em),



    // Clearances
    text(weight: "bold", size: 18pt, color.midgrey, smallcaps("Clearances")),
    v(1em),
    text(size: 14pt, clearances.sorted().join(linebreak())),
  )
    v(1fr)
    
    rect(
      width: 100%, 
      inset: 2em,
      stroke: 2pt + color.lightgrey,  
      grid(
        columns: (110pt, 1fr),
        gutter: 1em,
        image("../images/by-nc-sa.svg"),
        [This work is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/]
      )
    )
  
    pagebreak()

    // Table of Contents Page(s)
    
    set page( numbering: "i",)

    counter(page).update(1)

    show outline.entry.where(
        level: 1
        ): it => {
        v(12pt, weak: true)
        strong(it)
    }

    outline(depth: 2)

    pagebreak()

    // The rest of the content



    

    set page(
        margin: (top: 1in, left: 1in, bottom: 1in, right: 1in),
        numbering: "1",
        // header: anchor(),
        header: context { [
          #let footer_section = hydra(skip-starting: false, 1)
          #let footer_subsection = hydra(skip-starting: false, 2)
          #set text(9pt, style: "italic")
          #h(1fr)
          #title 
          #if (footer_section != none) [ \/ #footer_section] 
          #if (footer_subsection != none) [ \/ #footer_subsection] 
        ] }, 
        footer: [
          #set text(9pt, style: "italic")
          #h(1fr) Page 
          #counter(page).display(
                "1 of 1",
                both: true,
                )
        ]    
    )
  
    counter(page).update(1)
    
    wrapper(doc)
}