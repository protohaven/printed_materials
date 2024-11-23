
#import "/meta-environments/env-features.typ": *

= Tool Status Tags

Every tool at Protohaven has a status to let you know if the tool is safe to use: green, yellow, or red.

If the tool status is _green_, the tool is safe to use. All features should be expected to work, and no extra care should need to be taken while using the tool. There are no tags for tools with green status.

#grid(columns: (1fr, 1in), gutter: 2em,
[If the tool status is _yellow_, the tool may still be used, but with extra caution. Tools with yellow status should have a physical tag on the machine. The information on the physical tag or in the online maintenance history will indicate what special care needs to be taken while using the tool. If the physical tag and the maintenance log disagree, alert a tech.],
image("/common-graphics/visuals/shop_tag-caution.png")
)

#grid(columns: (1fr, 1in), gutter: 2em,
[If the tool status is _red_: #warning[DO NOT USE THE TOOL]. The tool is not safe to use.  Tools with red status should have a physical tag on the machine. The information on the physical tag or in the online maintenance history will indicate what fixes are pending, and when a repair is expected.],
image("/common-graphics/visuals/shop_tag-stop.png")
)

If you are in doubt about the status of a tool with no visible tag, check the tool status by following the link in the QR code attached to the tool, or check the Protohaven website for the tool status page:

https://www.protohaven.org/equipment/



