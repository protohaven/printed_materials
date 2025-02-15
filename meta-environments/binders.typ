

// #import "@preview/hydra:0.5.1": hydra, anchor
// 
// #import "/meta-environments/env-text_styles.typ": apply-text-styles
// 
// #import "/meta-environments/env-branding.typ": *
// 
// #import "/meta-environments/env-features.typ": *
// 
// #let tool_single(
//   title: "Tool Name",
//   authors: ("Someone","Someone Else"),
//   date: datetime.today(),
//   draft: true,
//   inclusion: false,
//   wrapper: apply-text-styles,
//   doc,
// ) = {
//   
//   set page(
//     background: if draft {rotate(-44deg,
//     {text(160pt, fill: rgb("EEEEEE"), [*DRAFT*]) 
//       linebreak()
//       text(60pt, fill: rgb("EEEEEE"), date.display())}
//   )})
//   
//   set document(title: title, 
//     author: authors,
//     keywords: ("protohaven", "tool"),
//     date: date,
//   )
//   
//   set text(
//       font: font.sans,
//   )
//   
//   // Title page
//   
//   align(center, image("/common-graphics/branding/Protohaven-Logo-Horizontal-Color.png"))
//  
//   v(1in)
//   
//   stack(dir: ttb,
//     text(weight: "bold", size: 32pt, title),
//     v(2em),
//     text(size: 24pt, date.display())
//   )
//   
//   v(1fr)
//   
//   show outline.entry.where(
//       level: 1
//       ): it => {
//       v(12pt, weak: true)
//       strong(it)
//   }
//   
//   outline(depth: 2)
//   
//   license_block()
//   
//   pagebreak()
//   
//     // The rest of the content
//   
//   set page(
//       margin: (top: 1in, left: 1in, bottom: 1in, right: 1in),
//       numbering: "1",
//       // header: anchor(),
//       header: context { [
//         #let footer_section = hydra(skip-starting: false, 1)
//         #let footer_subsection = hydra(skip-starting: false, 2)
//         #set text(9pt, style: "italic")
//         #h(1fr)
//         #title 
//         #if (footer_section != none) [ \/ #footer_section] 
//         #if (footer_subsection != none) [ \/ #footer_subsection] 
//       ] }, 
//       footer: [
//         #set text(9pt, style: "italic")
//         #h(1fr) Page 
//         #counter(page).display(
//               "1 of 1",
//               both: true,
//               )
//       ]    
//   )
//   
//   counter(page).update(1)
//   
//   wrapper(doc)
//   
// }

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
