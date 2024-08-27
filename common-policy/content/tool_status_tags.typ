
#import "/environments/env-templates.typ": *

= Tool Status Tags

Every tool at Protohaven has a status to let you know if the tool is safe to use.

If the tool status is _green_, the tool is safe to use. All features should be expected to work, and no extra care should need to be taken while using the tool.

#grid(columns: (1fr, 1in), gutter: 2em,
[If the tool status is _yellow_, the tool may still be used, but with extra caution. The information on the physical tag or in the online maintenance history will indicate what special care needs to be taken while using the tool. If the physical tag and the maintenance log disagree, alert a tech.],
image("./images/tool_status_tag-caution.png")
)

#grid(columns: (1fr, 1in), gutter: 2em,
[If the tool status is _red_: #warning[DO NOT USE THE TOOL]. The tool is not safe to use. The information on the physical tag or in the online maintenance history will indicate what fixes are pending, and when a repair is expected.],
image("./images/tool_status_tag-stop.png")
)

Some tools in the shop are explicitly green tagged to let you know they are working. Other tools in the shop are not explicitly green tagged when they are working to reduce sign fatigue. If you are in doubt about the status of a tool with no visible tag, check the Protohaven website for the tool status page:

https://www.protohaven.org/equipment/



