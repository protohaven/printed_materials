
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

== Culture
<culture>

== Community Guidelines
<community-guidelines>
===== #strong[#emph[1. Be Respectful]]
<be-respectful>
Our students, members, and partners bring with them a rich variety of
experiences, perspectives, and aspirations. What brings us together is a
shared interest in the process of making things. To create a welcoming,
supportive environment, we ask each individual to treat one another with
care and openness to diversity of race, gender, orientation, age,
identity, and ability.

Actions that bully, degrade, or threaten any individual or group are not
welcome in our community.

===== #strong[#emph[2. Take Responsibility]]
<take-responsibility>
Protohaven is built around shared resources - space, tools, knowledge,
and the community itself. To preserve these communal assets, each
individual is asked to take responsibility for their own actions and to
be mindful of how they impact those around them. We are each accountable
for ourselves, and don’t expect others to bear the costs of our actions.

===== #strong[#emph[3. Help Out]]
<help-out>
Protohaven is a public charity and is made possible only by people
giving more than they take. In this spirit, we ask each individual to
find opportunities to help each other, the organization, and our broader
community. We also ask each individual to recognize that assistance is
not always sought, to seek consent before providing aid, and to provide
opportunity for others’ work and discovery.





== #strong[Shop Rules]
<shop-rules>
=====
<section-4>
===== #strong[#emph[1. Be Safe]]
<be-safe>
#strong[Get Safety Clearances:] Most tools in the shop require an
Equipment Clearance Class or Test before use. Do not use this equipment
before obtaining the necessary clearance. These clearances are the bare
minimum requirements to use the equipment and are not a substitute for
consulting manufacturers’ safety guidelines, asking for help, or
following general safety principles.

#strong[Wear Protective Equipment:] Closed-toed shoes and safety glasses
are required and hearing protection is recommended in the Workshop area
of the space. Wear a respirator when sanding or spraying. Use dust
collection, fume extractors, and ventilation fans where provided. No
gloves, loose clothing, or dangling hair or jewelry around tools that
spin. Additional PPE (Personal Protective Equipment) may be required for
specific areas and tools.

#strong[Watch and Reset Equipment:] Never leave a piece of machinery
operating unattended. If you’ve changed equipment settings or setup
during use, return them to their original states before leaving the
tool.

===== #strong[#emph[2. Take Care of the Tools and Equipment]]
<take-care-of-the-tools-and-equipment>
Get Clearances: Each tool and piece of equipment is different and most
are expensive and/or delicate. Safety Clearances and Classes provide
machine-specific care details so you can effectively use a tool or piece
of equipment without damaging it.

Do Not Alter or Use Beyond Limits: Tools at the shop are set up to serve
a large number of people and projects. Do not permanently alter them for
a particular use. If you temporarily change settings or setup, return
them to their original state before leaving the tool. Only use tools
within their specified parameters.

Notify When Maintenance Is Needed: We can only fix what we know about.
Please use the status tag at each machine and online reporting system to
indicate when repair is needed.

===== #strong[#emph[3. Keep the Shop Clean]]
<keep-the-shop-clean>
Clean Up After Yourself: Making things creates garbage and debris. You
are responsible to clean it up. Your work area should look better when
you leave than when you started.

Return Tools to Their Original Locations: Large equipment should not be
moved for use. Smaller tools or carts should be returned to their
original location when you are finished.

Pay for Overnight or Monthly Storage: Unless you have paid overnight or
monthly storage (of which there are many options), everything you bring
in with you must leave when you leave for the day. If you pay for
storage, you may only store items in the area designated for you.
Anything left outside of your paid storage may be removed and disposed
of. Storage can be purchased through the Shop Tech on duty.

= Health and Safety

== TODO: PPE

== TODO: AED/First Aid Kit/Fire Extinguishers

== Covid Protocols
<covid-protocols>

=== Before Coming to Protohaven
<covid-before-coming>

Before coming to Protohaven, we ask everyone to verify that you:

+ Pass a self-screen for common Covid symptoms, meaning:

  - No fever \
  - No cough or shortness of breath \
  - No change in sense of taste or smell, and

+ Have not had close contact with someone who has tested positive for
  Covid in the last 10 days

+ Use the online calendar to schedule a time to visit the shop, so we
  have a record of all visitors

If someone has had symptoms or contact, we ask that they not return to
the shop until they either receive a negative Covid test result, or wait
10 days after their last symptoms or contact.

=== While at Protohaven
<covid-at-protohaven>

While using the shop, we ask you to:

- Wear a cloth facemask if you are not vaccinated \
- Maintain six feet social distance from others, \
- Regularly wash their hands \
- Carry a supplied cleaning kit and wipe down commonly-touched surfaces
  before and after use

=== After Leaving
<covid-after-leaving>

If, after leaving the shop, a visitor develops common Covid symptoms, we
ask that they get tested for Covid-19 and share the results with us.
This allows us to take the appropriate cleaning, testing, and
notification measures if the test comes back positive.

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

Beginning Fall 2021, they will be primarily organized by a trimester
Spring/Summer/Fall calendar. Class development and support are led by
the Education Coordinator and Executive Director and taught by either
staff, Teaching Fellows, or contract instructors.

=== Getting Cleared on Tools
<getting-cleared-on-tools>

Most tools in the shop require clearance before independent use as a
member. Each tool is different and most are expensive and/or delicate.
You can find our full list of equipment and the clearance associated
with each tool at
#link("https://www.protohaven.org/equipment/")[protohaven.org/equipment].

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

=== Age Requirements
<age-requirements>
Minors using the shop outside of scheduled classes must be members and
accompanied by a parent or guardian who is also a member. \
#strong[Workshop access] is limited only to those 16+ years of age. \
#strong[Studio access] is limited only to those of 12+ years of age.

=== Affordability
<affordability>
At Protohaven we are dedicated to being an accessible and equitable
makerspace. Low income rates are available for those who require
financial assistance to become members through our Access to Making
Program (AMP).
#link("https://protohaven.app.neoncrm.com/forms/protohaven-amp")[You can apply for an income based rate on our website].

=== Membership Types (Note: Rates will be changing as of 4/1/23)
<membership-types-note-rates-will-be-changing-as-of-4123>
#align(center)[#table(
  columns: 4,
  align: (col, row) => (left,auto,auto,center,).at(col),
  inset: 6pt,
  [], [Weekend], [General], [Pro (currently unavailable)],
  [Pricing],
  [\$65.00/mo],
  [\$115.00/mo],
  [\$265.00/mo],
  [Access to Workshop and Studio],
  [✅],
  [✅],
  [✅],
  [First Clearance Free (or \$45 toward a class)],
  [✅],
  [✅],
  [✅],
  [Weekend hours#strong[Sa/Su: 10am - 10pm]],
  [✅],
  [✅],
  [✅],
  [Weekday hours#strong[M-Th: 10am - 10pmFri: 10am - 10pm]],
  [],
  [✅],
  [✅],
  [24/7 Access],
  [],
  [],
  [✅],
)
]

==== #strong[General]
<general>
Access during all of our public hours, Monday – Thursday 10am – 10pm and
Friday – Sunday 10am – 10pm. Our most popular option for enthusiasts who
want to be able to use the shop anytime during our public hours.
#link("https://protohaven.app.neoncrm.com/forms/individual-membership")[Sign-up for a General Membership].

==== #strong[Weekend]
<weekend>
Access every Saturday and Sunday 10am – 10pm. An affordable option for
those just getting into making, or who need only occasional access and
can come in on the weekends.
#link("https://protohaven.app.neoncrm.com/forms/individual-membership")[Sign-up for a Weekend Membership].

==== #strong[Pro\*]
<pro>
24/7 access. Pittsburgh’s only co-working space that includes a full
design studio and fabrication workshop. For professionals or dedicated
makers who want to start early and stay late. Requires additional
training, and buddy-system for off-hour use of Workshop.

=== Materials & Consumables
<materials-consumables>
It is the responsibility of the maker to provide their own materials and
consumables in the workshop this includes the materials you are using to
construct your work, but also certain consumables that are required for
equipment to function (ie. sandpaper, welding nozzles, flux, contact
paper, etc.) Our store has some of these items in stock, but we cannot
guarantee that everything you need will be in stock at all times. Please
come prepared. Anyone wanting to purchase consumables, must see the Shop
Tech on duty.

=== Canceling Membership

#link(<how-to-switch-or-cancel-membership>)[How to Switch or Cancel Membership]
<how-to-switch-or-cancel-membership>
You can cancel your membership at any time by navigating to
#link("https://www.protohaven.org/my-account/")[#strong[My Account \> My Subscription \> Cancel.]]

To switch or resume your membership follow the same steps and cancel
your existing membership followed by purchasing your desired membership
from the
#link("https://www.protohaven.org/product/membership/")[Membership page.]

=== Scheduling a Clearance
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

=== Tool Tutorials
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


=== Reserving Equipment
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

=== Maintenance
<maintenance>

Maintenance actions can only be made by the authorized maintenance crew.

All members are expected to report maintenance when it’s required. A
subset of members then perform maintenance. Anyone can see the present
state of equipment by
#link("https://www.protohaven.org/tools/")[checking its status].
Maintenance is prioritized based on high equipment usage.

==== Maintenance Requests
<maintenance-requests>
Maintenance requests inform staff and techs of issues with equipment
ranging from simple replacement parts to potential safety issues.
Members are encouraged to use this system so that the Protohaven team
can respond quickly to shop needs, reducing equipment downtime and
keeping you working effectively longer. Maintenance Requests can be
found here: #link("https://www.protohaven.org/tools/")

==== Maintenance Actions
<maintenance-actions>
Maintenance actions can only be made by authorized maintenance crew
which includes staff, techs, instructors, fellows, and authorized
members. Members can view and follow maintenance actions in real time by
joining the Protohaven Discord Server

==== Equipment Status
<equipment-status>

You can also view the current status of all equipment and areas by
reviewing our Master Equipment List. This list catalogs all equipment
and reports its most recent condition and last action taken on it.
#link("https://www.protohaven.org/tools/")[View it here.]

=== Storage

Protohaven provides both overnight and monthly storage options to ensure
you can continue working on your projects without the hassle of
transporting your work to and from home. You must see the Shop Tech on
duty in order to purchase storage.

==== Overnight storage
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

==== Monthly Storage
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

=== Receiving Mail and Freight

As a member you can have your mail and supply orders sent directly to
Protohaven at no additional cost. Additionally, our loading docks can
support freight pick-ups and drop-offs within regular shop hours. We
just ask that you are available on your freight delivery day to properly
store your shipment before the shop closes that day. Please be sure to
check for mail regularly, as mail that has not been picked up for over
one month may be returned to the sender. If there are any extenuating
circumstances that will prevent you from picking up your mail in a
timely manner, please let us know.

=== Guest Policy
<guest-policy>

===== #strong[#emph[Who]]
<who>
Protohaven members are welcome to bring guests during member hours.
Members are responsible for ensuring that their guests abide by all
shop, community and COVID-19 guidelines during their visit. They will
also need to complete the following upon entering the building.

===== #strong[#emph[When]]
<when>
Guests are welcome during all member access hours. See the
#link(<shop-hours>)[shop hours] section for details.

===== #strong[#emph[How]]
<how>
Guests are NOT cleared Protohaven members and should not be assisting or
independently operating equipment in any way. Guests may consult, view
work in progress and socialize with their host. Guests must join as
members, complete orientation, and receive clearances BEFORE working or
assisting in the shop (this includes the use of tools provided by the
member). #strong[Any member who has a guest that is using tools and
equipment at Protohaven without first becoming a member and receiving
the proper clearances, will risk having their membership revoked.]

=== Emergency Policy
<emergency-policy>
=====
<section-17>
===== #strong[#emph[Fire]]
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

===== #strong[#emph[Medical/Injury]]
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

=====
<section-18>
===== #strong[#emph[Mental Health/Crisis De Escalation]]
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

= Opportunities
<opportunities>

== #strong[Shop Tech]
<shop-tech>
Our Shop Techs represent our primary maintenance and member support
corps. This team is responsible for fulfilling maintenance requests,
assisting and greeting members, and opening and closing the shop.

=== How to Apply
<how-to-apply>
More information can be found at
#link("https://www.protohaven.org/opportunities/").

== #strong[Teaching Fellowship]
<teaching-fellowship>
Over the course of this 6 month program, Teaching Fellows
collaboratively develop core Protohaven Classes. As a team, they play a
key role in creating a rich, supportive learning environment that brings
value to students of all skill levels.

=== How to Apply
<how-to-apply-1>
More information can be found at:
#link("https://www.protohaven.org/opportunities/").

== #strong[Instructor Open Calls]
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
== #strong[Address and Hours]
<address-and-hours>
=== Protohaven Address
<protohaven-address>
214 N. Trenton Ave \
Wilkinsburg, PA \
15221

#strong[Note:] 214 S. Trenton is on the other side of Penn Ave and is a
residential address and is sometimes where packages are delivered by
accident. #strong[Please note on your shipment that deliveries should be
sent to a commercial/warehouse address.]

=== Shop Hours
<shop-hours>
For the safety and security of our community and members Protohaven
Member Hours are only open to students (during scheduled class times),
members and guests of members. Office hours are open to the public for
tours while staff are available.

#strong[Office Hours] \
Monday - Friday: 10:00am - 4:00pm \
Saturday/Sunday: CLOSED TO PUBLIC

#strong[Member Hours] \
Monday - Thursday: 10am - 10pm \
Friday - Sunday: 10am - 10pm

#strong[Scheduled Tours] \
7 Days/Week \
Saturday-Thursday 1pm and 6pm \
Friday 1pm and 6:30pm

#strong[New Member Orientation] \
Hosted virtually on Tuesdays at 6pm

#strong[Holidays (Shop Closed)] \
New Year’s Eve \
New Year’s Day \
Martin Luther King Day \
Easter \
Memorial Day \
Juneteenth \
Independence Day \
Labor Day \
Thanksgiving/National Day of Mourning \
Christmas Eve \
Christmas

== #strong[Floorplan]
<floorplan>
==

<image8>
== #strong[Equipment List]
<equipment-list>
===
#link("https://docs.google.com/spreadsheets/u/0/d/1BZMLeLULBbMSpcKpguhINTxkQSG5uAkS1a61Ee00oBI/edit")[See full equipment statuses here]
<see-full-equipment-statuses-here>
#align(center)[#table(
  columns: 3,
  align: (col, row) => (left,left,left,).at(col),
  inset: 6pt,
  [Shop Area], [Tool Name], [Make and Model],
  [3D Studio],
  [Prusa 3D Printer],
  [Prusa i3 MK2 3D Filament Printer],
  [3D Studio],
  [Resin 3D Printer],
  [Monoprice Mini Deluxe Resin 3D Printer],
  [3D Studio],
  [3D Scanner],
  [EinScan SE],
  [],
  [],
  [],
  [Big CNC],
  [CNC Plasma Cutter],
  [CNC Router Parts PRO CNC Plasma Kit],
  [Big CNC],
  [CNC Router],
  [CNC Router Parts PRO60120],
  [Big CNC],
  [Industrial Laser Cutter],
  [Kern 4’ x 8’ 150W CO2],
  [],
  [],
  [],
  [Blacksmithing],
  [Forge],
  [NC Tools Whisper Momma Open-end Gas Forge],
  [],
  [],
  [],
  [CAD Hub],
  [Computer Workstation],
  [HP Z220],
  [],
  [],
  [],
  [Electronics],
  [Bench Power Supply],
  [GW Instek adjustable, 32V, 5A],
  [Electronics],
  [Function Generator],
  [Rigol 2 channel],
  [Electronics],
  [Oscilloscope],
  [Rigol digital 100MHz],
  [Electronics],
  [Reflow Oven],
  [7” x 9” infrared],
  [Electronics],
  [Soldering Stations],
  [2 Weller temperature controlled],
  [Electronics],
  [PCB Mill],
  [Othermill],
  [],
  [],
  [],
  [Finishing],
  [Powder Coating Booth],
  [SpectraCoat ES-01],
  [Finishing],
  [Powder Coating Oven],
  [Powder-X],
  [Finishing],
  [Sandblaster],
  [SkatblastUSA 1536 Champion Abrasive Blasting Cabinet],
  [Finishing],
  [Spray Booth],
  [Spray Booth],
  [],
  [],
  [],
  [Graphics],
  [CNC Embroidery Machine],
  [Brother PR650e Entrepreneur],
  [Graphics],
  [Cap Press],
  [Hotronix Maxx Cap Press],
  [Graphics],
  [Heat Press],
  [Hotronix Swinger Heat Press],
  [Graphics],
  [Large Format Printer],
  [Canon imagePROGRAF iPF650],
  [Graphics],
  [Vinyl Cutter],
  [US Cutter Laserpoint II],
  [Graphics],
  [Dye Sublimation Printer],
  [Sawgrass SG1000],
  [],
  [],
  [],
  [Jewelry & Metalsmithing],
  [Pickle],
  [],
  [Jewelry & Metalsmithing],
  [Polishing Machine],
  [],
  [Jewelry & Metalsmithing],
  [Rotary Tool],
  [Eurotool Flexshaft],
  [Jewelry & Metalsmithing],
  [Soldering Torch],
  [Natural Gas/ Oxygen],
  [Jewelry & Metalsmithing],
  [Tumbler],
  [],
  [Jewelry & Metalsmithing],
  [Ultrasonic],
  [],
  [],
  [],
  [],
  [Lasers],
  [Laser 1],
  [Rabbit Lasers QX-80-1290],
  [Lasers],
  [Laser 2],
  [Rabbit Lasers QX-80-1290],
  [Lasers],
  [Laser 3],
  [Trotec Speedy 300 C80],
  [],
  [],
  [],
  [Machine Shop],
  [Clausing Mill],
  [Clausing Kondia CNC Knee Mill],
  [Machine Shop],
  [Manual Metal Lathe],
  [Jet GH-1440W-3, Geared Head Lathe],
  [Machine Shop],
  [Manual Mill],
  [Jet JTM-4VS Turret Mill],
  [Machine Shop],
  [Surface Grinder],
  [Abrasive Machine Tool Co 3B],
  [Machine Shop],
  [Tormach],
  [Tormach PCNC 770],
  [],
  [],
  [],
  [Meeting Rooms],
  [None],
  [None],
  [Meeting Rooms],
  [None],
  [None],
  [Meeting Rooms],
  [None],
  [None],
  [],
  [],
  [],
  [Metal Shop],
  [Aluminium Bench Grinder],
  [Jet JBG-10A],
  [Metal Shop],
  [Arbor Press],
  [Jet AP3-M],
  [Metal Shop],
  [Disc Grinder],
  [Laguna 20” Disc Grinder Sander],
  [Metal Shop],
  [Metal Drill Press],
  [Craftsman Drill Press 137.229200],
  [Metal Shop],
  [Shop Press],
  [Central Machinery 20-Ton Shop Press],
  [Metal Shop],
  [Steel Bench Grinder],
  [Jet JBG-10A],
  [Metal Shop],
  [Vertical Metal Bandsaw],
  [Jet VBS-1610],
  [Metal Shop],
  [Electric Slip Roll],
  [ESR 1300x1.5],
  [Metal Shop],
  [Hand Brake],
  [Jet BP-1646H],
  [Metal Shop],
  [Hand Notcher],
  [Jet HN 16-T],
  [Metal Shop],
  [Metal Shrinker/Stretcher],
  [Central Machinery 68897],
  [Metal Shop],
  [Shear],
  [Birmingham/CP Tools H-5214],
  [Metal Shop],
  [Turret Punch],
  [Tin Knocker Hand Turret Punch TK-12],
  [Metal Shop],
  [Cold Saw],
  [Jet J-FK350-2K],
  [Metal Shop],
  [Horizontal Bandsaw],
  [Jet J-7040M, 10” x 16” Horizontal Mitering Bandsaw],
  [Metal Shop],
  [Ironworker],
  [Edwards 55 ton hydraulic ironworker],
  [Metal Shop],
  [Air Compressor],
  [Eaton/Polar Air Rotary Screw Compressor PRS0070003],
  [],
  [],
  [],
  [Plastics],
  [Injection Molder],
  [Morgan Press G-100T],
  [Plastics],
  [Strip Heater],
  [Formec FLB500],
  [Plastics],
  [Vacuum Former],
  [Formech 686],
  [],
  [],
  [],
  [Textiles],
  [Consumer Sewing Machine],
  [Janome DC3050],
  [Textiles],
  [Industrial Straight Stitch],
  [Juki DDL 8700],
  [Textiles],
  [Industrial Walking Foot],
  [Juki DNU-1541S],
  [Textiles],
  [Industrial Serger],
  [Juki MO-6714S],
  [],
  [],
  [],
  [Welding],
  [Manual Plasma Cutter],
  [Lincoln Electric Tomahawk 625],
  [Welding],
  [MIG Welder],
  [Lincoln Electric Power MIG 256],
  [Welding],
  [Oxy-Acetylene Torch],
  [Underwriters Laboratory Welding Torch 8F41],
  [Welding],
  [TIG Welder],
  [Lincoln Electric Precision TIG 225],
  [],
  [],
  [],
  [Wood Shop],
  [Belt and Disc Sander],
  [Jet JSG-6DC],
  [Wood Shop],
  [Downdraft Table],
  [Grizzly H2936 Vacuum Sanding Table],
  [Wood Shop],
  [Miter Saw],
  [Jet 12” Sliding Dual Bevel Compound Miter Saw],
  [Wood Shop],
  [Table Saw 1],
  [SawStop ICS53230 5HP],
  [Wood Shop],
  [Table Saw 2],
  [SawStop PCS31230 3HP],
  [Wood Shop],
  [Woodshop Drill Press],
  [Jet Step Pulley Drill Press JDP-20MF],
  [Wood Shop],
  [Woodworking Bandsaw],
  [JET 18” Woodworking Bandsaw JWBS-18QT-3],
  [Wood Shop],
  [Drum Sander],
  [Jet 16-32 Plus],
  [Wood Shop],
  [Jointer],
  [Laguna MJOIN 8020-0130],
  [Wood Shop],
  [Planer],
  [Laguna 16” 4-Post Planer MPLAN1510-0120],
  [Wood Shop],
  [Resaw Bandsaw],
  [Laguna LT14BX],
  [Wood Shop],
  [Main Dust Collector],
  [Grizzly G0601 Cyclone Dust Collector],
  [Wood Shop],
  [Wood Lathe],
  [Powermatic 4224B],
)
]
