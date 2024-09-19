# Protohaven Class Handouts

This repo tracks all of the materials to reproduce, maintain, develop the class handout PDFs:

* Typst sources
* Source images
* Source files for annotated images
* Reference materials
* Notes
 
For more notes, see the Wiki: 

https://protohaven.org/wiki/class_materials

# Notes on Editing the Typst Sources

## Lists

Typst is picky about syntax in a few places. One of those places is lists, which we use to designate authors, instructors, and clearances in the template metadata.

Lists look like this:

```
("thing one", "thing two")
```

...quoted strings, separated by commas, enclosed in parentheses.

When specifying people as authors or instructors, it's best to include name and email address (if available) in the standard format:

```
("Ellen Xample <example@example.com>", "Edgar Xample <example@example.org>")
```

### Lists with one element require an extra comma

For example, we may have two people that we want to cite as an author or instructor:

```
("Ashurbanipal", "Ikunum")
```

...and the above list should work fine (those folks don't have valid email addresses).

if you only want to list one person in the template, however, this won't work:

```
("Ashurbanipal")
```

The problem here is that Typst doesn't think that's a list (instead, it interprets the above as a single string), so the code that automatically processes the instructor entries will fail (because it's expecting a list, not a single string).

(This is a bug in the template; it's being worked on.)

The workaround to convince Typst that this is really a list (and make it happy) is to add an extra comma after the quoted string:

```
("Ashurbanipal",)
```

...which is conformant syntax for specifying a list of one thing.