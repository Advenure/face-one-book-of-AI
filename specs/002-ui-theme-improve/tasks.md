# Tasks: Improve UI with Physical AI/Robotics Theme

**Input**: Design documents from `/specs/002-ui-theme-improve/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: This feature relies heavily on visual inspection and verification using browser developer tools, as outlined in the Independent Test criteria and Success Criteria.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story?] Description`

-   **[P]**: Can run in parallel (different files, no dependencies)
-   **[Story]**: Which user story this task belongs to (e.g., US1, US2)
-   Include exact file paths in descriptions

## Path Conventions

-   All paths are relative to the `my-website/` directory unless otherwise specified.

---

## Phase 1: Setup (Project Environment & Prerequisites)

**Purpose**: Ensure the Docusaurus project is ready for UI modifications.

-   [ ] T001 Verify that the Docusaurus project in `my-website/` is functional and all dependencies are installed (if not, run `npm install` in `my-website/`).
-   [ ] T002 Ensure `my-website/src/css/custom.css` is correctly linked in `my-website/docusaurus.config.ts`. (This is a Docusaurus default, so verification is key).

---

## Phase 2: Foundational (Aesthetic Definition & Base Styles)

**Purpose**: Establish the core aesthetic principles and base styles that will form the "Physical AI / Robotics" theme.

**⚠️ CRITICAL**: The styles defined here will serve as the foundation for all subsequent UI tasks.

-   [ ] T003 Define and establish the primary color palette (dark navy/charcoal for backgrounds, electric blues/cyan/subtle purples for accents), typography choices (scientific, premium fonts), and base aesthetic principles for "futuristic, robotics-inspired design" in `my-website/src/css/custom.css` based on `research.md`.
-   [ ] T004 Implement global CSS resets or normalize styles in `my-website/src/css/custom.css` to ensure consistent application of the new theme across all elements, overriding Docusaurus defaults where necessary.
-   [ ] T005 Establish basic styling for common elements (e.g., `body` background, default text color, link styles, font families) in `my-website/src/css/custom.css` to set the overall tone of the "Physical AI / Robotics" theme.

**Checkpoint**: Foundational CSS styles are established, providing a consistent base for UI elements.

---

## Phase 3: User Story 1 - Experience Premium Futuristic Homepage UI (Priority: P1) 🎯 MVP

**Goal**: Readers experience a premium, VIP-level UI design on the Docusaurus homepage and feature cards, reflecting a futuristic "Physical AI / Robotics" theme.

**Independent Test**: Access the deployed Docusaurus site's homepage (`/`) in a web browser (via `npm run start` in `my-website/`). Visually observe the hero section and feature cards for the specified premium, futuristic, and robotics-inspired aesthetic, including animations, gradients, neon highlights, and scientific typography (SC-001).

### Implementation for User Story 1

-   [ ] T006 [P] [US1] Develop and apply custom CSS for the hero section of the homepage in `my-website/src/css/custom.css`, implementing a clean, futuristic, and robotics-inspired design.
-   [ ] T007 [P] [US1] Modify `my-website/src/pages/index.tsx` to integrate necessary class names or style props that hook into `my-website/src/css/custom.css` for the hero section styling.
-   [ ] T008 [P] [US1] Develop and apply custom CSS for the feature cards within `my-website/src/components/HomepageFeatures/index.tsx` in `my-website/src/css/custom.css`, ensuring a consistent futuristic aesthetic.
-   [ ] T009 [P] [US1] Modify `my-website/src/components/HomepageFeatures/index.tsx` to integrate necessary class names or style props that hook into `my-website/src/css/custom.css` for feature card styling.
-   [ ] T010 [US1] Implement smooth animations (e.g., hover effects, subtle entrance animations) for elements within the hero section and feature cards, defined in `my-website/src/css/custom.css`.
-   [ ] T011 [US1] Apply soft neon highlights and subtle gradients where appropriate to hero section and feature card elements, defined in `my-website/src/css/custom.css`.
-   [ ] T012 [US1] Run Docusaurus locally (`npm run start` in `my-website/`) and visually verify the homepage and feature cards for premium, futuristic design, animations, and typography (SC-001).

**Checkpoint**: At this point, User Story 1 (Homepage UI) should be fully functional and testable independently.

---

## Phase 4: User Story 2 - Experience High-Quality Physical AI Themed Documentation Pages (Priority: P1)

**Goal**: Readers accessing any markdown page within the `docs` folder should experience a high-quality, premium Physical AI themed style.

**Independent Test**: Access any markdown page (e.g., `/docs/introduction`) on the deployed Docusaurus site (via `npm run start` in `my-website/`). Visually inspect the headings, text, diagrams, and tables (if present) to confirm the high-quality, premium Physical AI theme and adherence to styling rules (SC-004).

### Implementation for User Story 2

-   [ ] T013 [P] [US2] Develop and apply custom CSS to style markdown headings (H1, H2, H3) within the `docs` folder in `my-website/src/css/custom.css`, ensuring they are clean, structured, scientific, and align with the deep-tech theme.
-   [ ] T014 [P] [US2] Develop and apply custom CSS to style standard markdown elements (e.g., paragraphs, lists, blockquotes, code blocks) within the `docs` folder in `my-website/src/css/custom.css` to match the premium Physical AI theme.
-   [ ] T015 [P] [US2] Implement custom CSS to visually enhance diagrams and tables within markdown pages in `my-website/src/css/custom.css`. This may involve styling table borders, cell padding, and diagram backgrounds for consistency.
-   [ ] T016 [US2] Run Docusaurus locally (`npm run start` in `my-website/`) and visually verify that documentation pages exhibit a high-quality, premium Physical AI theme for content, headings, diagrams, and tables (SC-004).

**Checkpoint**: At this point, User Stories 1 AND 2 should both work independently.

---

## Phase 5: Polish & Cross-Cutting Concerns

**Purpose**: Final verification, refinement, and optimization across all UI elements.

-   [ ] T017 Conduct a thorough visual review of the entire site (homepage, documentation pages, navigation bar, footer, and any other Docusaurus-generated UI elements) to ensure consistency in the premium Physical AI theme, responsiveness across devices, and overall aesthetic quality (SC-003, SC-005).
-   [ ] T018 Verify through browser developer tools that all new UI styling is exclusively implemented via custom CSS (`my-website/src/css/custom.css`), with no traces of TailwindCSS, Bootstrap, or other external CSS frameworks (FR-004, SC-002).
-   [ ] T019 Optimize `my-website/src/css/custom.css` for performance and maintainability (e.g., minify where appropriate, organize rules logically, remove unused styles).
-   [ ] T020 Document any custom design choices, specific color codes, or design system principles established during the implementation within `specs/002-ui-theme-improve/research.md` or a new design document for future reference.
-   [ ] T021 Update this `tasks.md` file to reflect any lessons learned or optimizations in the UI implementation process.

---

## Dependencies & Execution Order

### Phase Dependencies

-   **Setup (Phase 1)**: No dependencies - can start immediately. Ensures project is ready for styling.
-   **Foundational (Phase 2)**: Depends on Setup completion - establishes the core aesthetic rules and base CSS.
-   **User Story 1 (Phase 3)**: Depends on Foundational phase completion - applies styles to specific homepage components.
-   **User Story 2 (Phase 4)**: Depends on Foundational phase completion - applies styles to documentation markdown. Can be largely parallel with Phase 3 if different team members/agents are working on it.
-   **Polish (Phase 5)**: Depends on completion of all UI styling tasks (Phase 3 & 4).

### User Story Dependencies

-   **User Story 1 (P1)**: Independent of User Story 2.
-   **User Story 2 (P1)**: Independent of User Story 1. Both depend on the foundational CSS setup.

### Within Each User Story

-   Tasks `T006-T009` (applying CSS classes/modifying `index.tsx` files) for homepage elements can be parallelized.
-   `T010-T011` (animations, gradients) build on the base styling of `T006-T009`.
-   `T013-T015` (docs styling) can be parallelized as they target different aspects of markdown rendering.
-   Review tasks (e.g., `T012`, `T016`, `T017`) depend on the completion of their respective implementation tasks.

### Parallel Opportunities

-   Applying CSS and modifying `index.tsx` for the hero section (`T006`, `T007`) and `HomepageFeatures` component (`T008`, `T009`) can be done in parallel.
-   Styling of different markdown elements within the `docs` folder (`T013`, `T014`, `T015`) can be done in parallel.

---

## Parallel Example: Homepage Component Styling (User Story 1)

```bash
# Apply custom CSS and modify index.tsx for hero section
- [ ] T006 [P] [US1] Develop and apply custom CSS for the hero section of the homepage in `my-website/src/css/custom.css`.
- [ ] T007 [P] [US1] Modify `my-website/src/pages/index.tsx` to integrate necessary class names or style props for hero section.

# Apply custom CSS and modify HomepageFeatures/index.tsx for feature cards
- [ ] T008 [P] [US1] Develop and apply custom CSS for the feature cards within `my-website/src/components/HomepageFeatures/index.tsx` in `my-website/src/css/custom.css`.
- [ ] T009 [P] [US1] Modify `my-website/src/components/HomepageFeatures/index.tsx` to integrate necessary class names or style props for feature card styling.
```

## Implementation Strategy

### MVP First (Homepage UI)

1.  Complete Phase 1: Setup
2.  Complete Phase 2: Foundational
3.  Complete Phase 3: User Story 1 (T006-T012).
4.  **STOP and VALIDATE**: Visually verify the homepage UI and feature cards.

### Incremental Delivery (Homepage then Docs)

1.  Complete Setup + Foundational.
2.  Complete User Story 1 (Homepage UI) → Verify → Deploy/Demo (Homepage MVP!).
3.  Complete User Story 2 (Documentation Pages UI) → Verify → Deploy/Demo.
4.  Complete Polish & Cross-Cutting Concerns → Final verification and deployment.

### Parallel Team Strategy

With multiple developers/agents:

1.  Team completes Setup + Foundational together.
2.  Once Foundational is done:
    *   Agent 1: Focuses on User Story 1 (Homepage UI).
    *   Agent 2: Focuses on User Story 2 (Documentation Pages UI).
3.  Final Polish (Phase 5) is done after both user stories are complete.

---

## Notes

-   `[P]` tasks = tasks that can be performed without blocking other tasks that operate on different files or components.
-   `[Story]` label maps a task to a specific user story for traceability.
-   Each user story is designed to be independently completable and testable for incremental delivery.
-   Visual inspection is a critical component of testing and verification for this UI feature.
-   Frequent local preview (`npm run start`) is recommended.
