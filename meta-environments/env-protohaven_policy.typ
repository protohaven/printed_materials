
// Core colors and fonts for the design identity

#let accent_color = rgb("#6EC7E2")
#let warning_color = rgb("#900000")
#let light_grey = rgb(65%,65%,65%)
#let mid_grey = rgb(50%,50%,50%)
#let dark_grey = rgb(38%,38%,38%)

#let sans_font = ("Noto Sans")
#let serif_font = ("Noto Serif")
#let mono_font = ("Fira Mono")

/*
 * Renders `content` with the module's text styling.  This is useful for content
 *  that is outside of the `template` container but which should be visually consistent.
 */
#let apply-text-styles(content) = {
    set text(
        font: sans_font
    )
    set par(
      leading: 0.8em,
    )
    show heading.where(level: 1): it => [
        // #pagebreak(weak: true)
        #set text(size: 20pt, font: sans_font, number-type: "lining", weight: "bold",)
        #block(it.body)        
    ]
    show heading.where(level: 2): it => text(
        size: 17pt,
        font: sans_font,
        number-type: "lining",
        weight: "semibold",
        {
        v(0.6em)
        it.body
        }
    )
    show heading.where(level: 3): it => text(
        size: 14pt,
        font: sans_font,
        number-type: "lining",
        weight: "semibold",
        it.body
    )
    show heading.where(level: 4): it => text(
        size: 12pt,
        font: sans_font,
        number-type: "lining",
        weight: "semibold",
        it.body
    )

    show link: l => text(
         font: mono_font,
         size:10pt,
         box(width:6.7in)[#l.body]
    )

    show figure: it => align(center)[
      #set text(size: 9pt, font: sans_font)
      #it.body
      /*#it.supplement*/ #it.caption
    ]

    content
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
        font: sans_font,
    )

    align(center, image("../images/Protohaven-Logo-Horizontal-Color-959069212.png"))
    
    
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