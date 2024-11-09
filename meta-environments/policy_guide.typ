
#import "@preview/hydra:0.5.1": hydra, anchor

#import "/meta-environments/env-text_styles.typ": apply-text-styles

#import "/meta-environments/env-branding.typ": *

#import "/meta-environments/env-features.typ": *

#let policy_guide(
    title: "Policy Guide",
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

    align(center, image("/common-graphics/branding/logo-protohaven-color.svg"))
    
    
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
          #h(1fr) Page #context{counter(page).display("1 of 1", both: true,)}        ],     
    )
    
    counter(page).update(1)
    
    wrapper(doc)
}
