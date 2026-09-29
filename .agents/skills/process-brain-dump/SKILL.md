---
name: process-brain-dump
description: Automatically parses raw brain dumps, archives them to sources/raw/, organizes them into the Open Knowledge Format (OKF), extracts actionable tasks to an Action Plan, clears the source file, and updates the Excalidraw visual roadmap.
---
# Action-Oriented Brain Dump Workflow

This skill is designed to run automatically (often via a scheduled background task) to process the user's raw thoughts into their Second Brain, prioritizing *execution* and *tasks*.

## Workflow Steps

1. **Read the Source:** 
   - Read the contents of `sources/my-random-thoughts.md`.
   - If the file is empty or only contains whitespace, terminate the skill execution.

2. **Archive the Raw Dump:**
   - Save a verbatim copy of the raw brain dump to `sources/raw/DD-MM-YYYY.md` (e.g., `17-09-2026.md`) using the current date.
   - If a file for today's date already exists (i.e., the skill has run earlier today), **append** the new content to the bottom of the existing file, separated by a horizontal rule and a timestamp heading:
     ```
     ---
     ## HH:MM PM/AM
     <new raw content here>
     ```
   - If the file does not exist, create it with the raw content as-is.
   - **This folder is purely for manual reference.** It is NOT used by any other step in this workflow.

3. **Extract & Update the Action Plan (TODOs):**
   - Parse the raw thoughts to extract **actionable tasks**.
   - Categorize each task by effort:
     - 🟢 **Quick Wins** (< 1 hour)
     - 🟡 **Projects** (1-4 hours)
     - 🔴 **Deep Work** (Multi-day)
   - Analyze dependencies (e.g., Task A blocks Task B).
   - Read the existing `todo/Action-Plan.md` and insert the new tasks into the correct categories. Make sure unblocked tasks and Quick Wins are at the top.
   - Use checkboxes (`- [ ]`) for all tasks.

4. **Organize into OKF (Open Knowledge Format) (Optional):**
   - If the brain dump contains *information* (not just tasks), update the relevant markdown files:
     - `concepts/` (Broad strategies, workflows, ideas)
     - `entities/organizations/` (Businesses, agencies)
     - `entities/people/` (Creators, leads, authors)
     - `entities/tools/` (Software, platforms)
   - **CRITICAL:** Every new or updated OKF concept/entity file MUST include a YAML frontmatter block at the very top containing a `type`, `tags`, and `title`. (e.g., `--- \n type: concept \n tags: [example] \n ---`). This enables Dynamic System Prompts and Progressive Disclosure as taught by Cole Medin.
   - Use markdown wikilinks (`[[like this]]`) to interlink related concepts.

5. **Clear the Source File:**
   - Overwrite `sources/my-random-thoughts.md` with an empty string so it is ready for the user's next brain dump.

6. **Update the Visual Dependency Roadmap (Excalidraw):**
   - Generate or update `bluesmithera-action-roadmap.excalidraw` at the vault root as a **Visual Dependency Roadmap** of the `Action-Plan.md`.
   - The file MUST be formatted as pure raw JSON.
   - **EXCLUDE** `sources/raw/` from all input for this step. Only use `Action-Plan.md`.
   - **Design principles for the Roadmap:**
     - **Layout:** The map MUST be a literal roadmap/Gantt-chart flow of tasks. Tasks flow left-to-right (or top-to-bottom) based on execution order.
     - **Dependency Chains:** If Task A is required for Task B, an arrow connects them.
     - **Time/Effort Color Coding:** Color boxes based on effort (e.g., Green for Quick Wins, Yellow for Projects, Red for Deep Work).
     - **Arrow Styling:** ALWAYS use curved arrows (`"roundness": {"type": 2}`) with intermediate control points to route lines around boxes so they NEVER overlap or cross each other.
     - **Focus:** The leftmost (or topmost) uncompleted box is the exact next step the user needs to take to make money.
   - **Output is an `.excalidraw` file only.** Do NOT attempt to render a PNG.

7. **Rebuild the Wiki Index:**
   - Use the `grep_search` tool (e.g., querying `^(title|tags):` with regex enabled) to instantly extract the titles and tags from all markdown files in `concepts/` and `entities/` in bulk. Avoid reading files one-by-one to save tokens.
   - **EXCLUDE** `sources/raw/` from this step. Do NOT index or link any files from the raw archive.
   - Overwrite the master `index.md` at the root of the vault with a structured table of contents.
   - Group the links logically by **Tags** (e.g., Marketing, Sales, Tools) to optimize information retrieval and Progressive Disclosure.
   - Use proper markdown wikilinks (`[[filename]]`) in the index.
