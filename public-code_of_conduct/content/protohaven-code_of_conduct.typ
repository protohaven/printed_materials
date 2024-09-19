#import "/environments/env-templates.typ": *

#show: doc => policy_document(
  title: "Code of Conduct",
  authors: ("Protohaven Board",),
  draft: false,
  date: datetime(
    year: 2024,
    month: 4,
    day: 1,
  ),
  doc
)

#include "/common-policy/content/code_of_conduct.typ"