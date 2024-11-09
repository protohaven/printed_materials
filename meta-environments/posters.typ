
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

#let large_poster(
  title: "Poster Title",
  category: "Shop Area",
  authors: ("Someone","Someone Else"),
  date: datetime.today(),
  wrapper: apply-text-styles,
  doc,
) = {
  
  set page(
    margin: (top: 0.5in, left: 0.5in, bottom: 0.5in, right: 0.5in),
    width: 26in,
    height: 40in,
  )
  
  set document(title: title, 
    author: authors,
    keywords: ("protohaven", "poster"),
    date: date,
  )
  
  set text(
      font: font.sans,
  )
  
  // Poster Heading
  
  grid(
    columns: (8in, 1fr),
    gutter: 0.5in,
    image("/common-graphics/branding/logo-protohaven-p.svg"),
    align(bottom,text(size: 72pt, baseline: -6pt, category))
  )
  align(center,text(weight: "bold", size: 144pt, title))
  
  // The rest of the content

  wrapper(doc)
  
}

#let small_poster(
  title: "Poster Title",
  category: "Shop Area",
  authors: ("Someone","Someone Else"),
  date: datetime.today(),
  wrapper: apply-text-styles,
  doc,
) = {
  
  set page(
    margin: (top: 0.5in, left: 0.5in, bottom: 0.5in, right: 0.5in),
    width: 8.5in,
    height: 11in,
  )
  
  set document(title: title, 
    author: authors,
    keywords: ("protohaven", "poster"),
    date: date,
  )
  
  set text(
      font: font.sans,
  )
  
  // Poster Heading
  
  grid(
    columns: (0.32in, 1fr),
    gutter: 0.2in,
    image("/common-graphics/branding/logo-protohaven-p.svg"),
    align(bottom,text(size: 32pt, baseline: -2pt, category))
  )
  align(center,text(weight: "bold", size: 48pt, title))
  
  // The rest of the content

  wrapper(doc)
  
}