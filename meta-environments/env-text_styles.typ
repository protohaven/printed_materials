
#import "/meta-environments/env-features.typ": *

#import "/meta-environments/env-branding.typ": *

/*
 * TEXT STYLES
 *
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
    show heading.where(level: 1): it => {
        pagebreak(weak: true)
        text(size: 24pt, font: font.sans, number-type: "lining", weight: "bold",it.body)     
    }
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



