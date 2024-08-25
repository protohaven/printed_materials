
#let glossary_image(src) = {
  box(
    stroke: 0.5pt + gray,
    image(src)
  )
}

#let glossary_entry(term: "term", category: "general", meaning: "meaning", image: "") = {
    v(0.5em)
    if image != "" {
      grid(
        columns: (8em, 1fr, auto),
        gutter: 1em,
        text(weight: "bold", term),
        meaning,
        glossary_image(image)
      ) 
    } else {
      grid(
        columns: (8em, auto),
        gutter: 1em,
        text(weight: "bold", term),
        meaning
      )
    }
}

#let gutter_space = 1em

// #let _term = glossary_entry(
//   term: [],
//   meaning: [],
//   image: ""
// )