# Taskdn Starter Vault

A pre-configured [Obsidian](https://obsidian.md) vault for managing tasks, projects, and areas using the [Taskdn](https://tdn.danny.is) system. Clone this repo to get started with file-based task management, or just to try Taskdn out.

Requires Obsidian 1.14 or later.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/dannysmith/tdn-obsidian-starter-vault my-tasks
   cd my-tasks
   ./shift-dates.sh
   rm -rf .git README.md shift-dates.sh
   ```

   `./shift-dates.sh` is optional. It moves the example dates so they're relative to today, so the Today and Upcoming views have something in them. Skip it and the examples will just look old.

2. **Open in Obsidian:** click "Open folder as vault" and select the cloned folder. The vault opens on `Start Here.md`.

Bases, Templates and wikilinks are already set up.

## Taskdn Plugin (Optional)

The [Taskdn plugin](https://github.com/dannysmith/obsidian-taskdn) renders wikilinks to tasks as interactive widgets. See `example-note.md` for a demonstration.

1. Go to **Settings → Community plugins** and turn on community plugins
2. Click **Browse**, search for "Taskdn", then install and enable it
3. In the plugin settings, set:
   - Tasks directory: `tasks`
   - Ignored files: `Overview.md` (so links to the tasks Overview don't render as a task)

If Taskdn isn't in the store yet, install it with [BRAT](https://github.com/TfTHacker/obsidian42-brat) instead: install and enable BRAT from **Browse**, run **BRAT: Add a beta plugin for testing** from the command palette, enter `dannysmith/obsidian-taskdn`, then enable Taskdn in **Community plugins**.

## Vault Structure

```
├── areas/              # Life areas (ongoing responsibilities)
│   └── Overview.md     # Bases views of all areas
├── projects/           # Projects (have an end goal)
│   └── Overview.md     # Bases views of all projects
├── tasks/              # Individual tasks
│   ├── Overview.md     # Bases views of all tasks
│   └── archive/        # Completed/dropped tasks
├── templates/          # Templates for new items
│   └── bases/          # Obsidian Bases definitions
├── Start Here.md       # Dashboard: today's tasks, board, active projects
├── example-note.md     # Demo of plugin features
└── CLAUDE.md           # Instructions for AI assistants
```

## Bases

- **Tasks.base**: Board (kanban by status), Today, Upcoming (next 14 days), Active (grouped by status), All, and Linked Tasks (embedded in project and area notes to show their tasks)
- **Projects.base**: Board (kanban by status), Active, All Projects, and Linked Projects (embedded in area notes)
- **Areas.base**: Active and All Areas

## Creating New Items

1. Create a new file in the appropriate folder (`tasks/`, `projects/`, or `areas/`)
2. Open the command palette (Cmd/Ctrl + P)
3. Run "Insert template"
4. Select the appropriate template

### Available Templates

- **Task** - Basic task with status, dates, project/area links
- **Project** - Project with status, area link, overview and its tasks
- **Area** - Life area with status, description, its projects and tasks
- **Trip Project** - Specialised project template for travel planning

## Optional: Folder Notes Plugin

If you use the [Folder Notes](https://github.com/LostPaul/obsidian-folder-notes) plugin, you can make the Overview pages appear when clicking folders:

1. Install Folder Notes from Community plugins
2. In plugin settings, set **Folder note name** to `Overview`
3. Restart Obsidian. Clicking `tasks/`, `projects/`, or `areas/` in the file explorer now opens the Overview, and the Overview files are hidden from the file list

## Learn More

- [Taskdn Documentation](https://tdn.danny.is) - Full documentation
- [CLI Guide](https://tdn.danny.is/cli/overview) - Command-line interface
- [Desktop App](https://tdn.danny.is/desktop/overview) - Native task management app
- [Specification](https://tdn.danny.is/reference/specification) - File format details

## License

MIT
