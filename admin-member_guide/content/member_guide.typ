
#import "../../environments/env-templates.typ": *

#set enum(full: true, numbering: (..n) => {
  let format = if n.pos().len() > 1 {"a."} else {"1."}
  numbering(format, n.pos().last())
})

#show: doc => guide_document(
  title: "Member Guide",
  authors: ("Protohaven Board",),
  draft: true,
  // date: datetime(
  //   year: 2024,
  //   month: 4,
  //   day: 1,
  // ),
  doc
)



= Welcome
<welcome_to_protohaven>

Welcome to Protohaven!


= Community

#set heading(offset:1)

#include "/common-policy/content/core_values.typ"
#include "/common-policy/content/shop_rules.typ"

#set heading(offset:0)

== Health

#set heading(offset:2)

#include "/common-policy/content/personal_protective_equipment.typ"
#include "/common-policy/content/emergency_equipment.typ"
#include "/common-policy/content/covid_protocols.typ"

#set heading(offset:0)

== Safety

#set heading(offset:2)

#include "/common-policy/content/tool_status_tags.typ"
#include "/common-policy/content/filing_a_tool_report.typ"

#set heading(offset:0)

= Programs
<programs>

== Classes
<classes>

Classes are the entry point to our community. They focus on teaching
design, fabrication, and related skills. They dive into everything from
basic skills and safety to immersive projects that teach students how to
operate equipment with confidence to advanced maintenance and
troubleshooting intensives that earn members clearance to join our
maintenance crew. They range from introductory public talks and
workshops to in-depth multi-week courses. Not all classes provide
clearances. Be sure to read course descriptions carefully.

Class development and support are led by the Education Coordinator and Executive Director and taught by either staff, Teaching Fellows, or contract instructors.

=== Getting Cleared on Tools
<getting-cleared-on-tools>

Most tools in the shop require clearance before independent use as a
member. Each tool is different and most are expensive and/or delicate.
You can find our full list of equipment and the clearance associated
with each tool at:

https://www.protohaven.org/equipment/

Each new member receives a free clearance (or \$45 off a 101 Class) when
they join and complete the 
#link("https://protohaven.app.neoncrm.com/np/clients/protohaven/eventList.jsp")[New Member Orientation].

#strong[There are two pathways to get cleared to use equipment as a
member:]

+ #link("https://protohaven.app.neoncrm.com/np/clients/protohaven/eventList.jsp")[#strong[Take a Class]]
  — Learn through making things together!

  We think the best way to gain clearance on a piece of equipment that
  is new to you is through a hands-on, supportive class that may include
  a clearance. They’re also a great way to advance skills that you may
  already have. Our classes are open to the public.

  + Open to the public, no experience required (unless otherwise
    stated). \
  + 3-6 students maximum, depending on the class. \
  + Minimum of two participants. Classes may be canceled due to low
    enrollment.

+ #link("https://www.protohaven.org/product-category/basic-clearances")[#strong[Schedule a Clearance]]
  — Study
  #link("https://www.protohaven.org/tool-trainers/")[shop protocols] &
  show us your skills!

  If you have previous experience on a tool our Clearances are designed
  for you. These are exclusive to members and are scheduled by request.
  You’ll need to demonstrate to your instructor that you can use the
  equipment safely, carefully, and cleanly to receive clearance.
  Clearances are pass/fail. YOU WILL NOT RECEIVE ANY INSTRUCTION DURING
  THIS SESSION.

  + Open to active members, scheduled with minimum 72hr lead time \
  + 2 students maximum \
  + 1 student minimum

=== Intensive Courses
<intensive-courses>

We’re incredibly excited to offer intensive, multi-session courses! This
is the most in-depth, supportive pathway for anyone to grow confidence
working independently, deepen their skills, and gain clearance on
equipment.

Our intensive courses are the only class offering that include
membership, homework, a private \#class-channel on
#link("https://www.protohaven.org/discord/")[our discord server], and
peer group meetups between sessions. Existing members receive a special
discount on all our multi-session courses! It is important to note that
existing members who enroll in an intensive do not receive free,
discounted, transferred, refunded, or prorated membership during this
time.


= Membership
<membership>

Membership is a long-term educational and support program for design and
fabrication enthusiasts and professionals. Protohaven members receive
discounts on public courses, gain independent access to the 12,500ft2
Wilkinsburg campus for self-guided projects, participate in member-only
learning circles, and receive individual guidance based on their
specific goals.

The space includes professional-quality tools and equipment in 15
different disciplines ranging from graphic design and laser cutting to
woodworking and welding.

Each new member also receives a free Basic Clearance (or \$45 off a
class) when they join for the first time and complete the New Member
Orientation.

== Age Requirements
<age-requirements>

Minors using the shop outside of scheduled classes must be members and
accompanied by a parent or guardian who is also a member. \
#strong[Workshop access] is limited only to those 16+ years of age. \
#strong[Studio access] is limited only to those of 12+ years of age.

== Affordability
<affordability>

At Protohaven we are dedicated to being an accessible and equitable
makerspace. Low income rates are available for those who require
financial assistance to become members through our Access to Making
Program (AMP).

You can apply for an income based rate on our website:

// FIXME the following URL is broken? -pgm

https://protohaven.app.neoncrm.com/forms/protohaven-amp

== Membership Types

Protohaven offers three membership types: general, weekend, and weeknight:

#table(
  stroke: none,
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  // align: horizon + left,
  align: (col, row) => (left + top,center + top,center + top,center + top).at(col),
  [], [*General*], [*Weekend*], [*Weeknight*],
  table.hline(start: 1),
  [Pricing],
  [\$115.00/mo],
  [\$65.00/mo],
  [\$65.00/mo],
  [Hours],
  [10am–10pm],
  [Sa-Su: 10am–10pm],
  [M-F: 5pm–10pm],
  [First Clearance Free\
  (or \$45 toward a class)],
  [✓],
  [✓],
  [✓],
)




=== General Membership
<general-membership>

General members have access to the shop during all of our public hours. This is our most popular option for enthusiasts who want the flexibility to use the shop anytime it's open to the public.

=== Weekend Membership
<weekend-membership>

Weekend members have access to the shop every Saturday and Sunday from 10am – 10pm. Weekend membership is an affordable option for those just getting into making, or who need only occasional access and can come in on the weekends.

=== Weeknight Membership
<weeknight-membership>

Weekend members have access to the shop every Monday through Friday from 5pm – 10pm. Weekend membership is an affordable option for those just getting into making, or who need only occasional access and can work in the evenings.

== Managing Your Protohaven Account

=== Sign Up for a Protohaven Membership

Sign up for a Protohaven membership with the following link:

https://www.protohaven.org/membership/

=== Cancel Your Protohaven Membership

You can cancel your membership at any time by going to your Protohaven account page:

https://www.protohaven.org/my-account/

...and navigating to:

#emph[My Account \> My Subscription \> Cancel]

To switch or resume your membership, cancel your existing membership (as above), and then sign up for your desired membership from the membership page:

https://www.protohaven.org/product/membership/

== Materials & Consumables
<materials-consumables>

It is the responsibility of the maker to provide their own materials and
consumables in the workshop this includes the materials you are using to
construct your work, but also certain consumables that are required for
equipment to function (ie. sandpaper, welding nozzles, flux, contact
paper, etc.) Our store has some of these items in stock, but we cannot
guarantee that everything you need will be in stock at all times. Please
come prepared. Anyone wanting to purchase consumables, must see the Shop
Tech on duty.

== Scheduling a Clearance
<scheduling-a-clearance>

Clearances are required before members can operate equipment
independently at Protohaven. Learn more at
#link(<getting-cleared-on-tools>)["Getting Cleared on Tools"] under the
#link(<classes>)["Classes"] section of this guide.

As a member, you can schedule a Basic Clearance for equipment where you
hold previous experience. Sign into your Protohaven account and go to
our
#link("https://www.protohaven.org/product-category/basic-clearances")[Basic Clearances]
page to schedule.

As an important next step, you’ll need to study the public,
shop-specific protocols by visiting the
#link(<tool-tutorials>)[Tool Tutorial] before your clearance.

== Tool Tutorials
<tool-tutorials>

#link("https://www.protohaven.org/tool-trainers/")[Tool Tutorials] are
public guides to the basic safe, careful, and clean use of the equipment
at Protohaven. They’re the basis for receiving clearance on equipment,
and are also useful resources for ongoing use.

We’ve just started their development, but will be creating them for each
piece of equipment in the shop that requires clearance to use.



The #strong[table of contents] on the left hand menu allows you to
quickly jump to the section you need. \


The #strong[Initial Setup], #strong[Basic Operation], and
#strong[Cleanup Checklists] are what instructors use to ensure that you
can use the equipment according to community expectations. \


== Reserving Equipment
<reserving-equipment>

Members are required to reserve time slots for equipment and areas
online using their Protohaven account. Reservations are for one and two
hour blocks and can be reserved multiple times. You must be cleared in
an area or piece of equipment in order to reserve it. Most areas can
support 2 members simultaneously working, however others (like welding
and the CNCs) can only support 1 user at a time. Anyone caught using
equipment that they do not have the appropriate clearances for risks
having their membership revoked.

#block[
#set enum(numbering: "1)", start: 1)
+ From the home page navigate to the membership tab and click "Equipment
  reservations".

+ Once on the reservation page choose a piece of equipment from the
  dropdown and use the calendar to select your desired date. Once
  selected a drop down menu with available times will appear. Select
  your desired time range and add to your cart. Repeat this step to add
  more reservations (Times will not be reserved until you proceed to
  checkout)

+ Once you have added all of your reservations proceed to checkout by
  clicking the shopping basket at the top right of the page.
  Reservations are free products and must be checked out before the
  reservation can be booked.
]



#block[
#set enum(numbering: "1)", start: 4)
+ Once you complete checkout you will receive an email confirming your
  booking. You can always review and cancel any current and past
  bookings from the "My Account" page and navigate to "Bookings" NOTE:
  Bookings may only be cancelled the day BEFORE your reservation. Day of
  cancellations must be submitted by email to
  #link("mailto:hello@protohaven.org")[hello\@protohaven.org]. Please
  include your order number in your cancellation request.
]

== Maintenance
<maintenance>

Maintenance actions can only be made by the authorized maintenance crew.

All members are expected to report maintenance when it’s required. A
subset of members then perform maintenance. Anyone can see the present
state of equipment by
#link("https://www.protohaven.org/tools/")[checking its status].
Maintenance is prioritized based on high equipment usage.

=== Maintenance Requests
<maintenance-requests>
Maintenance requests inform staff and techs of issues with equipment
ranging from simple replacement parts to potential safety issues.
Members are encouraged to use this system so that the Protohaven team
can respond quickly to shop needs, reducing equipment downtime and
keeping you working effectively longer. Maintenance Requests can be
found here: #link("https://www.protohaven.org/tools/")

=== Maintenance Actions
<maintenance-actions>
Maintenance actions can only be made by authorized maintenance crew
which includes staff, techs, instructors, fellows, and authorized
members. Members can view and follow maintenance actions in real time by
joining the Protohaven Discord Server

=== Equipment Status
<equipment-status>

You can also view the current status of all equipment and areas by
reviewing our Master Equipment List. This list catalogs all equipment
and reports its most recent condition and last action taken on it.
#link("https://www.protohaven.org/tools/")[View it here.]

== Storage

Protohaven provides both overnight and monthly storage options to ensure
you can continue working on your projects without the hassle of
transporting your work to and from home. You must see the Shop Tech on
duty in order to purchase storage.

=== Overnight storage
<overnight-storage>

- #strong[Project Carts] - Movable carts with bottom shelf, ideal for
  storing smaller projects and tools. #emph[All belongings must remain
  inside the perimeter of the cart.] \
- #strong[Hub Tables] - Movable, large tables, ideal for medium to large
  glue-ups, drying, or curing. #emph[All belongings must remain inside
  the perimeter of the table.] \
- #strong[Pallet space] - Workshop floor space, ideal for storing large
  builds or pieces of personal equipment. #emph[Belongings must be on
  movable pallets or carts with wheels.]

=== Monthly Storage
<monthly-storage>

- #strong[Locker] - Small lockers for storing tools, small projects, and
  personal belongings. Can be locked (lock not included). \
- #strong[Board & Bar] - Great for longer lengths of wood or metal \
- #strong[Cage] - Perfect for those using the shop regularly. Plenty of
  room for projects, material and personal tools. Can be locked (lock
  not included). \
- #strong[Sheet] - Ideal for plywood, sheet metal, large acrylic, etc \
- #strong[Rack] - Shelving offering plenty of horizontal space for
  flexible storage. #emph[All belongings must remain inside the area of
  the shelf.] \
- #strong[Pallet space] - Workshop floor space, ideal for storing large
  builds or pieces of personal equipment. #emph[Belongings must be on
  movable pallets or carts with wheels.]

== Receiving Mail and Freight

As a member you can have your mail and supply orders sent directly to
Protohaven at no additional cost. Additionally, our loading docks can
support freight pick-ups and drop-offs within regular shop hours. We
just ask that you are available on your freight delivery day to properly
store your shipment before the shop closes that day. Please be sure to
check for mail regularly, as mail that has not been picked up for over
one month may be returned to the sender. If there are any extenuating
circumstances that will prevent you from picking up your mail in a
timely manner, please let us know.

== Guest Policy
<guest-policy>

==== Who
<who>

Protohaven members are welcome to bring guests during member hours.
Members are responsible for ensuring that their guests abide by all
shop, community and COVID-19 guidelines during their visit. They will
also need to complete the following upon entering the building.

==== When
<when>

Guests are welcome during all member access hours. See the
#link(<shop-hours>)[shop hours] section for details.

==== How
<how>

Guests are _not_ cleared Protohaven members and should not be assisting or
independently operating equipment in any way. Guests may consult, view
work in progress and socialize with their host. 

Guests must join as members, complete orientation, and receive clearances _before_ working or assisting in the shop (this includes the use of tools provided by the
member). 

*Protohaven members will risk having their membership revoked if they admit a guest that is using tools and equipment at Protohaven without the guest first becoming a member and receiving the proper clearances.*

== Emergency Policy
<emergency-policy>

=== Fire
<fire>

In the event of a small fire, extinguishers are present throughout the
building:

- Kitchen/Hub \
- Wood Shop \
- Maintenance Room \
- Blacksmithing \
- Front Entrance

If you use a fire extinguisher for any reason, notify the appropriate
Protohaven staff member or on duty tech.

In the event of a true fire emergency OR if the fire suppression system
is triggered, evacuate the building immediately and THEN call 911 ONLY
after you have safely removed yourself from danger. After emergency
services have been contacted notify the appropriate Protohaven staff
member or and fill out an incident report.

=== Medical/Injury
<medicalinjury>

For minor injuries there are first aid kits in the kitchen located next
to the shop doors, in the forge, and in the woodshop area next to the
door leading to the studio. Please report any low supplies to a staff
member. There are also two AED machines, with one being located in the
kitchen, and the other being located in the woodshop next to the first
aid kit.

In the event of a medical emergency time is of the essence. If you can
safely and knowledgeably do so, #strong[seek consent] to stabilize the
injured person(s) and CLEARLY IDENTIFY an individual to call 911. If you
are unable to stabilize, safely attempt to locate someone who can after
calling 911. After the immediate threat has passed and emergency
services have been contacted notify the appropriate Protohaven staff
member for further instruction.

In the event of an injury, an incident report will need to be filed with
the Shop Tech on duty.

==== Mental Health/Crisis De-Escalation
<mental-healthcrisis-de-escalation>

In the event of a mental health crisis it is important that those
affected feel safe and that they have resources at their disposal. Our
neighbors at Resolve Crisis Services (333 N. Braddock Ave.) have around
the clock support for those in need and we encourage you to direct those
in crisis to those resources.

Resolve 24/7 Hotline: 1-888-7-YOU-CAN (796-8226) \
Walk-ins welcome without appointment

= Communications

== Discord
<discord>

Protohaven Members enjoy access to our Discord server to connect, share,
and learn alongside fellow members. It is designed to be a peer-to-peer
resource for all members.

As part of our community, here are some of the channels you have access
to:

- \#general to connect and generally chit-chat with one another \

- \#free to share materials that are looking for a good home \

- \#buy-and-sell to, well, buy and sell \

- \#help-wanted to seek out advice or coordinate project help from other
  members \

- \#show-and-tell to see and share all the cool things you’re working on
  both inside and outside the shop!

  To join, please use the link below and sign-up with your Protohaven
  Email:

  #link("https://www.protohaven.org/discord/")

= Volunteer Opportunities
<volunteer-opportunities>

== Shop Tech
<shop-tech>

Our Shop Techs represent our primary maintenance and member support
corps. This team is responsible for fulfilling maintenance requests,
assisting and greeting members, and opening and closing the shop.

=== How to Apply
<how-to-apply>

More information can be found at
#link("https://www.protohaven.org/opportunities/").

== Teaching Fellowship
<teaching-fellowship>

Over the course of this 6 month program, Teaching Fellows
collaboratively develop core Protohaven Classes. As a team, they play a
key role in creating a rich, supportive learning environment that brings
value to students of all skill levels.

=== How to Apply
<how-to-apply-1>

More information can be found at:
#link("https://www.protohaven.org/opportunities/").

== Instructor Open Calls
<instructor-open-calls>

Instructors are contracted to use their design and fabrication
experience to inspire, mentor, and problem solve alongside students who
are discovering their skills and gaining a deeper understanding of shop
equipment.

=== How to Apply
<how-to-apply-2>

Open calls will be posted as needed here:
#link("https://www.protohaven.org/opportunities/")

= Shop Information
<shop-information>
== Contact Information

=== Shop Location 

#image("/common-graphics/maps/map-protohaven_location.svg")

=== Street Address
<protohaven-address>

214 N. Trenton Ave \
Wilkinsburg, PA \
15221




#strong[Note:] 214 S. Trenton is on the other side of Penn Ave and is a
residential address and is sometimes where packages are delivered by
accident. #strong[Please note on your shipment that deliveries should be
sent to a commercial/warehouse address.]

=== Phone Number

The Protohaven main desk can be reached by phone at: 412-731-4400

=== Email Address

Send email to Protohaven at: `hello@protohaven.org`

== Shop Hours
<shop-hours>

For the safety and security of our community and members Protohaven
Member Hours are only open to students (during scheduled class times),
members and guests of members. Office hours are open to the public for
tours while staff are available.

=== Office Hours 

Monday - Friday: 10:00am - 4:00pm 

=== Member Hours 

Monday - Thursday: 10am - 10pm

Friday - Sunday: 10am - 10pm

=== Scheduled Tours 

7 Days/Week 

Saturday-Thursday 1pm and 6pm 

Friday 1pm and 6:30pm

==== New Member Orientations 

New member onboarding is a scheduled, one-on-one meeting to help you get settled in the shop.

==== Holidays (Shop Closed) 

- New Year’s Eve
- New Year’s Day
- Martin Luther King Day
- Easter
- Memorial Day
- Juneteenth
- Independence Day
- Labor Day
- Thanksgiving/National Day of Mourning
- Christmas Eve
- Christmas

= Appendicies

== Code of Conduct
<code-of-conduct>

#set heading(offset:2)
#include "/common-policy/content/code_of_conduct.typ"
#set heading(offset:0)

== Shop Usage Agreement
<shop-usage-agreement>

== Floorplan
<floorplan>

#image("/common-graphics/maps/floorplan-full.svg", width: 100%)

== Equipment List
<equipment-list>

The following equipment list is more or less complete as of the date of publication of this member's guide. For an updated list with status information, please see the following link:

https://www.protohaven.org/equipment/

#block[

#set text(size: 9pt)

#let tool_list = csv("./protohaven_tool_list.csv")

#table(
  columns: (auto, auto, auto),
  stroke: none,
  inset: 5pt,
  fill: (_, y) => if calc.odd(y) { color.tablegrey },
  align: horizon + left,
  table.header(
    [*Shop Area*], [*Tool Name*], [*Make and Model*],
  ),
  table.hline(),
  ..tool_list.flatten(),
)
]

