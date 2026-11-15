This note demonstrates how the **obsidian-taskdn** plugin renders task links as interactive widgets.

---

## Task Links as List Items

When a task link is the first thing in a bullet point, it renders as a widget with checkbox, status, and metadata. Click the checkbox to mark a task done.

- [[update-homepage]]
- [[fix-mobile-nav]]
- [[book-flights]]
- [[random-idea]]

Completed tasks show with strikethrough:

- [[archive/setup-dev-env]]

---

## Inline Task Links

Task links within paragraphs render inline. Here are some tasks I'm tracking: [[update-homepage]] is in progress, while [[fix-mobile-nav]] is ready to start.

The [[book-flights]] task is currently blocked - I need to confirm dates first.

---

## Different Statuses

The plugin shows different visual indicators for each status:

- [[random-idea]] - inbox (unprocessed)
- [[fix-mobile-nav]] - ready
- [[update-homepage]] - in-progress
- [[book-flights]] - blocked
- [[try-webassembly]] - icebox
- [[archive/setup-dev-env]] - done
- [[archive/migrate-wordpress-comments]] - dropped

---

## Mixing Tasks and Checklists

Task links and plain checkboxes can share a list at any indent level. Ticking a task's checkbox updates the task file; plain checkboxes work as normal. Right-click a plain checkbox to convert it into a task file.

- [[book-dentist]]
	- [x] Find the surgery's phone number
	- [ ] Check which mornings are free
- [[renew-passport]]
	- [ ] Get new photos taken
	- [[book-flights]]
		- [ ] Compare Haneda and Narita prices
- [ ] Water the plants
- [[choose-colour-palette]]

---

## Links to Projects and Areas

Links to projects and areas render as normal Obsidian links (not task widgets):

- [[Website Redesign]] - a project
- [[Japan Trip]] - another project
- [[Side Projects]] - an area

This is intentional - only files in the `tasks/` directory become task widgets.

---

## Mixed Content

Real notes often mix task links with other content:

Focusing on the [[Website Redesign]] project at the moment. Main priorities:

- [[update-homepage]] - the big one, due first
- [[fix-mobile-nav]] - quick fix, do this first

Also want to look at [[research-ryokans]] for the [[Japan Trip]], now that it's no longer deferred.

The [[backup-laptop]] task is routine maintenance that belongs to the [[Home]] area rather than any specific project.
