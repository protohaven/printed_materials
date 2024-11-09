
#import "@preview/hydra:0.5.1": hydra, anchor

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




/* 
 * Templates
 *
 * Templates for various documents
 */

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

#let guide_document(
  title: "Guide Document",
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
    keywords: ("protohaven", "guide"),
    date: date,
  )
  
  set text(
      font: font.sans,
  )
  
  // Title page
  
  align(center, image("/common-graphics/branding/Protohaven-Logo-Horizontal-Color.png"))
 
  v(1in)
  
  stack(dir: ttb,
    text(weight: "bold", size: 32pt, title),
    v(2em),
    text(size: 24pt, date.display())
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


#let policy_document(
    title: "Policy Document",
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
      keywords: ("protohaven", "policy"),
      date: date,
    )

    show outline.entry.where(
      level: 1
      ): it => {
      v(12pt, weak: true)
      strong(it)
    }

    // Title page

    set text(
        font: font.sans,
    )

    align(center, image("/common-graphics/branding/Protohaven-Logo-Horizontal-Color.png"))
    
    
    v(1in)
    
    stack(dir: ttb,
    // text(weight: "bold", size: 18pt, mid_grey, smallcaps("Policy Document")),
    // v(1.2em),
    text(weight: "bold", size: 36pt, [#title]),
    v(3em),  
    text(weight: "bold", size: 14pt, [Adoption Date: #date.display("[month repr:long] [day padding:none], [year]")]),
    v(15em),     
    outline(depth: 2)
  )
    
  
    v(1fr)
    
    
    
    rect(width: 100%, inset: 2em, align(center, "License Information"))
  
    pagebreak()

    // The rest of the content

    set page(
        margin: (top: 1in, left: 1in, bottom: 1in, right: 1in),
        numbering: "1",
        footer: [
          #set text(9pt, style: "italic")
          #h(1fr)
          Protohaven Policy Document — #title —
          #counter(page).display(
                "1 of 1",
                both: true,
                )
        ],     
    )
    
    counter(page).update(1)
    
    wrapper(doc)
}

#let tool_single(
  title: "Tool Name",
  authors: ("Someone","Someone Else"),
  date: datetime.today(),
  draft: true,
  inclusion: false,
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
    keywords: ("protohaven", "tool"),
    date: date,
  )
  
  set text(
      font: font.sans,
  )
  
  // Title page
  
  align(center, image("/common-graphics/branding/Protohaven-Logo-Horizontal-Color.png"))
 
  v(1in)
  
  stack(dir: ttb,
    text(weight: "bold", size: 32pt, title),
    v(2em),
    text(size: 24pt, date.display())
  )
  
  v(1fr)
  
  show outline.entry.where(
      level: 1
      ): it => {
      v(12pt, weak: true)
      strong(it)
  }
  
  outline(depth: 2)
  
  license_block()
  
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

#let binder(
    title: "Tool Reference",
    authors: ("Someone","Someone Else"),
    date: datetime.today(),
    area: "All",
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
      keywords: ("protohaven", "policy"),
      date: date,
    )

    // show outline.entry.where(
    //   level: 1
    //   ): it => {
    //   v(12pt, weak: true)
    //   strong(it)
    // }

    // Title page

    set text(
        font: font.sans,
    )

    align(center, image("/common-graphics/branding/logo-protohaven-color.svg"))
    
    
    v(1in)
    
    stack(dir: ttb,
    // text(weight: "bold", size: 18pt, mid_grey, smallcaps("Policy Document")),
    // v(1.2em),
    text(weight: "bold", size: 36pt, [#title]),
    v(3em),  
    text(weight: "bold", size: 14pt, [Adoption Date: #date.display("[month repr:long] [day padding:none], [year]")]),
    v(15em),     

  )
    
  
    v(1fr)
    
    
    
    rect(width: 100%, inset: 2em, align(center, "License Information"))
  
    pagebreak()

    set page(
        margin: (top: 1in, left: 1in, bottom: 1in, right: 1in),
        numbering: "i",
        footer: [
          #set text(9pt, style: "italic")
          #h(1fr)
          #align(center, [#context {counter(page).display("i")}])
          
        ],     
    )

    counter(page).update(1)

    outline(depth: 1)
    
    pagebreak()

    // The rest of the content

    set page(
        margin: (top: 1in, left: 1in, bottom: 1in, right: 1in),
        numbering: "1",
        footer: [
          #set text(9pt, style: "italic")
          #context {
          if calc.odd(here().page()) {
            align(right, [
              #title —
              #counter(page).display(
                    "1 of 1",
                    both: true,
                    )
            ])
          } else {
            align(left, [
              #counter(page).display(
                    "1 of 1",
                    both: true,
                    )
              — #title
            ])
          }
          // line(length: 100%)
        }],
        
        // footer: [
        //   #set text(9pt, style: "italic")
        //   #h(1fr)
        //   #title —
        //   #counter(page).display(
        //         "1 of 1",
        //         both: true,
        //         )
        // ],     
    )
    
    counter(page).update(1)
    
    wrapper(doc)
}
