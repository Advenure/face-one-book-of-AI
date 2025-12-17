# Tasks: Physical AI Book + Docusaurus Setup

**Input**: Design documents from `/specs/001-physical-ai-docs/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: No explicit test generation was requested in the feature specification, so test tasks are not included beyond manual verification steps.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story?] Description`

-   **[P]**: Can run in parallel (different files, no dependencies)
-   **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
-   Include exact file paths in descriptions

## Path Conventions

-   All paths are relative to the `my-website/` directory unless otherwise specified.

---

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Project initialization and basic environment preparation.

- [X] T001 Ensure Node.js (v18+) and npm/Yarn are installed on the development machine (system environment).

- [X] T002 Navigate to the `my-website` project directory in the terminal (`cd my-website`).

- [X] T003 Install Docusaurus and other project dependencies (`npm install` or `yarn install`) in `my-website/`.
- [X] T004 Clear all existing content from the `my-website/docs` directory using `Remove-Item -Path "my-website/docs/*" -Recurse -Force` (PowerShell) or `rm -rf my-website/docs/*` (Bash).

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Core infrastructure that MUST be complete before ANY user story content or UI can be implemented.

**⚠️ CRITICAL**: No user story work can begin until this phase is complete.

- [X] T005 Review `my-website/docusaurus.config.ts` for general site metadata and ensure its configuration is appropriate for the new content (e.g., title, favicon, base URL).
- [X] T006 Implement a base `sidebars.ts` configuration in `my-website/sidebars.ts` to support the main documentation sections: Introduction, Syllabus, Chapters, Labs, Research Papers, and MCP Servers. This involves creating a basic structure for these categories.

**Checkpoint**: Foundation ready - user story implementation can now begin in parallel.

---

## Phase 3: User Story 1 - Access and Navigate Physical AI & Robotics Documentation (Priority: P1) 🎯 MVP

**Goal**: Readers can easily access and navigate the documentation for Physical AI & Robotics.

**Independent Test**: Access the deployed Docusaurus site (via `npm run start` in `my-website/`), navigate to the "Physical AI & Robotics" section, confirm an introduction page and a table of contents (via sidebar) are visible. Use the sidebar to move between the Introduction and Syllabus pages successfully.

### Implementation for User Story 1

- [X] T007 [P] [US1] Create an `introduction.md` file with placeholder content in `my-website/docs/introduction.md`.

- [X] T008 [P] [US1] Create a `syllabus.md` file with placeholder content in `my-website/docs/syllabus.md`.

- [X] T009 [US1] Update `my-website/sidebars.ts` to include navigation links for `introduction.md` and `syllabus.md` under a main "Physical AI & Robotics" category.
-   [ ] T010 [US1] Run Docusaurus locally (`npm run start` in `my-website/`) and verify navigation between `introduction.md` and `syllabus.md` works as expected.

**Checkpoint**: At this point, User Story 1 should be fully functional and testable independently.

---

## Phase 4: User Story 2 - Learn from Academic Physical AI & Robotics Content (Priority: P1)

**Goal**: Readers can learn about various Physical AI & Robotics topics through high-quality, academically formatted content.

**Independent Test**: Review the content of the Introduction, Syllabus, and newly added Chapters, Labs, Research Papers, and MCP Servers for accuracy, formatting, and adherence to academic standards (academic tone, clean markdown). Confirm at least 6 distinct chapters and 7 distinct MCP server pages are present and accessible via navigation.

### Implementation for User Story 2

- [X] T011 [P] [US2] Create `my-website/docs/chapters` directory and add 6 `chapterX.md` placeholder files (e.g., `chapter1.md`, `chapter2.md`, etc.).
- [X] T012 [P] [US2] Create `my-website/docs/labs` directory and add at least one `labX.md` placeholder file (e.g., `lab1.md`).
- [X] T013 [P] [US2] Create `my-website/docs/research-papers` directory and add at least one `paperX.md` placeholder file (e.g., `paper1.md`).
- [X] T014 [P] [US2] Create `my-website/docs/mcp-servers` directory and add 7 `serverX.md` placeholder files (e.g., `server1.md`, `server2.md`, etc.).
-   [ ] T015 [US2] Update `my-website/sidebars.ts` to include navigation links for all new chapter, lab, research paper, and MCP server files, organizing them into their respective categories within the sidebar.
-   [ ] T016 [US2] Run Docusaurus locally (`npm run start` in `my-website/`) and verify all new content pages are navigable and render correctly without broken links.
-   [ ] T017 [US2] Populate `my-website/docs/introduction.md` with academic content for "Physical AI & Robotics Introduction", adhering to FR-001 and FR-003.
-   [ ] T018 [US2] Populate `my-website/docs/syllabus.md` with academic content for the "Physical AI & Robotics Syllabus", adhering to FR-001 and FR-003.
-   [ ] T019 [US2] Populate the 6 `my-website/docs/chapters/chapterX.md` files with academic content on Physical AI, Robotics, Humanoid Robots, and Embodied AI Systems, adhering to FR-001 and FR-003.
-   [ ] T020 [US2] Populate the `my-website/docs/labs/labX.md` file(s) with academic content related to labs, adhering to FR-001 and FR-003.
-   [ ] T021 [US2] Populate the `my-website/docs/research-papers/paperX.md` file(s) with academic content related to research papers, adhering to FR-001 and FR-003.
-   [ ] T022 [US2] Populate the 7 `my-website/docs/mcp-servers/serverX.md` files with academic content related to MCP servers, adhering to FR-001 and FR-003.

**Checkpoint**: At this point, User Stories 1 AND 2 should both work independently.

---

## Phase 5: Polish & Cross-Cutting Concerns

**Purpose**: Implement the "VIP premium theme style" using custom CSS and ensure overall UI elegance and consistency.

**Independent Test**: Visually inspect the deployed Docusaurus site's header, footer, hero section, and general UI against the "VIP premium theme style" (SC-003). Verify that no TailwindCSS classes or imports are present in the codebase (FR-005).

### Implementation for Polish & Cross-Cutting Concerns

-   [ ] T023 [P] Define and implement "VIP premium theme style" using custom CSS in `my-website/src/css/custom.css`. This includes styling for header, footer, hero section, and general typography/layout elements.
-   [ ] T024 Update `my-website/docusaurus.config.ts` to correctly apply `my-website/src/css/custom.css` as the primary stylesheet, ensuring it overrides default Docusaurus styles where necessary.
-   [ ] T025 Modify `my-website/src/pages/index.tsx` to implement the hero section and other landing page UI elements according to the "VIP premium theme style" and overall UI requirements (FR-005, FR-006).
-   [ ] T026 Modify `my-website/src/components/HomepageFeatures/index.tsx` to align with the "VIP premium theme style" and overall UI elegance, ensuring features are visually consistent (FR-005, FR-006).
-   [ ] T027 Perform a full visual review of the site (header, footer, hero, content pages) by running Docusaurus locally (`npm run start` in `my-website/`) to ensure consistent application of the "VIP premium theme style" and overall elegance across all elements.
-   [ ] T028 Verify that no TailwindCSS classes, directives, or imports are present in `my-website/` or its subdirectories, confirming adherence to FR-005.
-   [ ] T029 Run a full local production build (`npm run build` in `my-website/`) to ensure no build errors and correct static asset generation.
-   [ ] T030 Verify `my-website/docs` directory contains only the new content and all old content has been removed (SC-005).
-   [ ] T031 Verify `quickstart.md` instructions are accurate and effective by attempting to follow them from a clean environment (if feasible).

---

## Dependencies & Execution Order

### Phase Dependencies

-   **Setup (Phase 1)**: No dependencies - can start immediately.
-   **Foundational (Phase 2)**: Depends on Setup completion - BLOCKS all user stories.
-   **User Stories (Phase 3 & 4)**: All depend on Foundational phase completion. User Story 1 can proceed independently, and User Story 2 can follow.
-   **Polish (Phase 5)**: Depends on all desired user stories being complete.

### User Story Dependencies

-   **User Story 1 (P1)**: Can start after Foundational (Phase 2). No dependencies on other stories.
-   **User Story 2 (P1)**: Can start after Foundational (Phase 2). Depends on the navigation structure established in User Story 1 to ensure content is accessible, but its core content creation can be parallelized.

### Within Each User Story

-   Placeholder creation tasks (e.g., `T007`, `T008`, `T011-T014`) can be parallelized.
-   Navigation updates (`T009`, `T015`) depend on content placeholders.
-   Content population (`T017-T022`) depends on placeholder files being present.
-   UI customization tasks (`T023-T026`) in the Polish phase can be largely parallel.

### Parallel Opportunities

-   All Setup tasks marked with `[P]` (none directly, but `T001-T004` are sequential environment/project setup, `T004` could be parallel with content creation if the directory is empty already).
-   Within User Story 1, placeholder content creation (`T007`, `T008`) can be done in parallel.
-   Within User Story 2, the creation of placeholder directories and files (`T011-T014`) can be done in parallel. The content population tasks (`T017-T022`) can also be parallelized if handled by different individuals.
-   UI implementation tasks in Phase 5 (`T023`, `T025`, `T026`) can be parallelized to some extent.

---

## Parallel Example: User Story 1

```bash
# Create placeholder content in parallel
# (These would be executed as separate tool calls or by different agents)
- [ ] T007 [P] [US1] Create an `introduction.md` file with placeholder content in `my-website/docs/introduction.md`.
- [ ] T008 [P] [US1] Create a `syllabus.md` file with placeholder content in `my-website/docs/syllabus.md`.
```

## Implementation Strategy

### MVP First (User Story 1 Only)

1.  Complete Phase 1: Setup
2.  Complete Phase 2: Foundational (CRITICAL - blocks all stories)
3.  Complete Phase 3: User Story 1
4.  **STOP and VALIDATE**: Verify independent test criteria for User Story 1.

### Incremental Delivery

1.  Complete Setup + Foundational → Foundation ready.
2.  Add User Story 1 → Verify independent test criteria → Deploy/Demo (MVP!).
3.  Add User Story 2 (Content population) → Verify independent test criteria → Deploy/Demo.
4.  Complete Polish & Cross-Cutting Concerns → Final verification and deployment.

### Parallel Team Strategy

With multiple developers:

1.  Team completes Setup + Foundational together.
2.  Once Foundational is done:
    *   Developer A: User Story 1 (Navigation setup)
    *   Developer B: User Story 2 (Content generation for specific sections)
    *   Developer C: Phase 5 (UI styling and index page updates)
3.  Stories/phases complete and integrate independently with careful coordination.

---

## Notes

-   `[P]` tasks = tasks that can be performed without blocking other tasks that operate on different files or components.
-   `[Story]` label maps a task to a specific user story for traceability.
-   Each user story is designed to be independently completable and testable for incremental delivery.
-   It is recommended to run Docusaurus locally (`npm run start`) frequently to verify changes during development.
-   Commit after each task or logical group of tasks.
