
#import "@preview/hydra:0.5.1": hydra, anchor

#import "/meta-environments/env-text_styles.typ": apply-text-styles

#import "/meta-environments/env-branding.typ": *

#import "/meta-environments/env-features.typ": *

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

    align(center, image("/common-graphics/branding/logo-protohaven-color.svg"))
    
    
    v(1in)
    
    stack(
      dir: ttb,
      text(weight: "bold", size: 20pt, color.midgrey, smallcaps("Class Notes")),
      v(1.2em),
      text(weight: "bold", size: 24pt, [#category #number: #title]),
      v(15em),
      // Clearances
      text(weight: "bold", size: 18pt, color.midgrey, smallcaps("Clearances")),
      v(1em),
      text(size: 14pt, clearances.sorted().join(linebreak())),
    )
    
    v(1fr)
  
    license_block()
  
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
          #h(1fr) Page #context{counter(page).display("1 of 1", both: true,)}
        ]    
    )
  
    counter(page).update(1)
    
    wrapper(doc)
}