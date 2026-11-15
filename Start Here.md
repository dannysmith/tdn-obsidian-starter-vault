Welcome to your Taskdn vault. It's a working example of how to manage tasks, projects and areas as plain markdown files, with [Bases](https://obsidian.md/help/bases) views on top. The tasks below are examples: poke around, then delete them and add your own.

## Today

In-progress tasks, anything due or scheduled today or earlier, and tasks that became available today.

![[Tasks.base#Today]]

## Board

Drag a card to another column to change its status.

![[Tasks.base#Board]]

## Active Projects

![[Projects.base#Active]]

## Tasks in Your Notes

Link to a task from any list and, with the Taskdn plugin installed, it renders as a live task you can tick off from here. Mix them with plain checkboxes and nest them however you like:

- [[update-homepage]]
	- [ ] Send the new copy to a friend for a read-through
	- [[fix-mobile-nav]]
- [[research-ryokans]]
- [ ] Ask Emma for Kyoto restaurant tips

See [[example-note]] for more, and the Project Plan in [[Website Redesign]] for a real-world example.

## How It Works

**Tasks** are actionable items stored in `tasks/`. Each task has a status (inbox, ready, in-progress, blocked, done, etc.) and can belong to a project or an area. Completed tasks can be moved to `tasks/archive/`.

**Projects** are collections of tasks with a defined goal. They live in `projects/` and can belong to an area. Each project note shows its own tasks.

**Areas** are ongoing areas of responsibility (like "Home" or "Health"). They live in `areas/` and show their projects and tasks.

Every view in this vault comes from the bases in `templates/bases/`. Open one to see all its views, or edit them to suit how you work.

## Overviews

- [[tasks/Overview|Tasks]] - every task view: Board, Today, Upcoming, Active and All
- [[projects/Overview|Projects]] - project board and lists
- [[areas/Overview|Areas]] - active and archived areas

## Creating New Items

Use Obsidian's Templates plugin:

1. Create a new file in the appropriate folder
2. Run **Insert template** (Cmd/Ctrl + P → "Insert template")
3. Choose Task, Project, Area, or Trip Project
4. Fill in the frontmatter fields

## The Taskdn Plugin

If you install the **Taskdn** plugin from Community plugins, wikilinks to tasks render as interactive widgets. See [[example-note]] for a demonstration.

## Learn More

- [Taskdn Documentation](https://tdn.danny.is) - Full docs, CLI guide, and more
- [GitHub](https://github.com/dannysmith/taskdn) - Source code and issues

---

*This vault opens on this note. Edit it into your own dashboard, or change what opens in Settings → Files and links → Default file to open.*
