# Tasks: Homepage Visual Theme Update

**Input**: Design documents from `/specs/001-homepage-style-update/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/, quickstart.md

**Tests**: No specific tests were requested in the feature specification, so test generation tasks will be minimal, focused on verification.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

- **Web app**: `my-website/src/`

---

## Phase 1: Setup (Development Environment)

**Purpose**: Prepare the local development environment for Docusaurus and the feature branch.

- [ ] T001 Clone the repository or ensure local repository is up to date in `/`
- [ ] T002 Checkout the feature branch `001-homepage-style-update` in `/`
- [ ] T003 Navigate to the Docusaurus project directory `my-website/`
- [ ] T004 Install project dependencies in `my-website/` using `npm install` or `yarn install`
- [ ] T005 Start the Docusaurus development server in `my-website/` using `npm start` or `yarn start`

---

## Phase 2: Foundational (Element Identification and CSS Preparation)

**Purpose**: Identify the specific elements to be styled or removed on the homepage and prepare the primary CSS file. This phase ensures a solid understanding of the DOM structure and CSS targets before applying changes.

- [ ] T006 [P] Open the Docusaurus homepage in a web browser and use developer tools to identify the CSS selectors for the main content area and overall page layout in `http://localhost:3000`
- [ ] T007 [P] Use developer tools to identify the CSS selectors for interactive buttons on the homepage in `http://localhost:3000`
- [ ] T008 [P] Use developer tools to identify the CSS selectors for headings and body text on the homepage in `http://localhost:3000`
- [ ] T009 [P] Use developer tools to accurately identify the specific CSS selector for the "Docusaurus tutorial - 5 minutes" button in `http://localhost:3000`
- [ ] T010 Ensure `my-website/src/css/custom.css` is ready for styling, and that it's correctly imported by Docusaurus.

---

## Phase 3: User Story 1 - Experience a Modern and Elegant Homepage (Priority: P1) 🎯 MVP

**Goal**: Transform the homepage to a modern, elegant, and robotics-inspired visual theme using custom CSS.

**Independent Test**: Manually verify that the homepage displays the new theme, background, button styles, fonts, and color palette. No functional regressions should be observed.

### Implementation for User Story 1

- [ ] T011 [P] [US1] Apply a new modern Physical AI theme background color to the homepage using CSS in `my-website/src/css/custom.css`
- [ ] T012 [P] [US1] Update button styles (colors, hover effects, border radius) on the homepage using CSS in `my-website/src/css/custom.css`
- [ ] T013 [P] [US1] Update font styles and heading designs to premium quality on the homepage using CSS in `my-website/src/css/custom.css`
- [ ] T014 [P] [US1] Apply a clean, modern, and robotics-inspired color palette to the homepage elements using CSS in `my-website/src/css/custom.css`
- [ ] T015 [US1] Review and refine all applied CSS to ensure consistency and override Docusaurus defaults effectively in `my-website/src/css/custom.css`

---

## Phase 4: User Story 2 - Interact with a Streamlined Homepage (Priority: P2)

**Goal**: Remove the "Docusaurus tutorial - 5 minutes" button and ensure all other content remains untouched with no regressions on other pages.

**Independent Test**: Manually verify that the specified button is absent from the homepage and that all other homepage elements, as well as all other pages on the website, appear and function correctly.

### Implementation for User Story 2

- [ ] T016 [P] [US2] Hide the "Docusaurus tutorial - 5 minutes" button using CSS (e.g., `display: none;` or `visibility: hidden;`) in `my-website/src/css/custom.css` based on the identified selector.
- [ ] T017 [US2] Manually verify that the "Docusaurus tutorial - 5 minutes" button is no longer visible on the homepage in `http://localhost:3000`
- [ ] T018 [US2] Manually verify that all other content and functionalities on the homepage remain untouched and fully operational in `http://localhost:3000`
- [ ] T019 [US2] Manually navigate to at least two other distinct pages (e.g., `/docs/intro`, blog posts) to ensure no unintended visual or functional changes have occurred.

---

## Phase 5: Polish & Cross-Cutting Concerns

**Purpose**: Final review, validation, and cleanup.

- [ ] T020 Run the Docusaurus development server to perform a final visual inspection of the homepage in `my-website/`
- [ ] T021 Review `my-website/src/css/custom.css` for any redundant, unoptimized, or poorly structured CSS rules.
- [ ] T022 Ensure all changes adhere to the "Custom CSS only" constraint and that no HTML or JavaScript files were inadvertently modified in `my-website/`
- [ ] T023 Remove temporary `feature_description.txt` and `run_create_feature.ps1` files from `/`

---

## Dependencies & Execution Order

### Phase Dependencies

-   **Setup (Phase 1)**: No dependencies - can start immediately.
-   **Foundational (Phase 2)**: Depends on Setup completion - BLOCKS all user stories.
-   **User Story 1 (Phase 3)**: Depends on Foundational phase completion.
-   **User Story 2 (Phase 4)**: Depends on Foundational phase completion. Ideally follows or runs in parallel with User Story 1's styling implementation.
-   **Polish (Phase 5)**: Depends on all user stories being functionally and visually complete.

### User Story Dependencies

-   **User Story 1 (P1)**: Can start after Foundational (Phase 2). No dependencies on User Story 2.
-   **User Story 2 (P2)**: Can start after Foundational (Phase 2). Its verification depends on User Story 1's styling changes being present, but implementation of button hiding can run in parallel with styling.

### Within Each User Story

-   CSS identification tasks (in Foundational phase) must precede implementation tasks.
-   Styling tasks within US1 can be done in any order, or in parallel.
-   Button hiding in US2 must be done before its verification.
-   Verification tasks in US2 (T017, T018, T019) depend on US1's styling tasks (T011-T015) to be considered complete, as they check for absence of regressions on styled elements and other pages.

---

## Parallel Example: User Story 1 & 2 Implementation (After Foundational Phase)

```bash
# Developer A focuses on User Story 1 (Styling)
Task: "- [ ] T011 [P] [US1] Apply a new modern Physical AI theme background color to the homepage using CSS in my-website/src/css/custom.css"
Task: "- [ ] T012 [P] [US1] Update button styles (colors, hover effects, border radius) on the homepage using CSS in my-website/src/css/custom.css"
Task: "- [ ] T013 [P] [US1] Update font styles and heading designs to premium quality on the homepage using CSS in my-website/src/css/custom.css"
Task: "- [ ] T014 [P] [US1] Apply a clean, modern, and robotics-inspired color palette to the homepage elements using CSS in my-website/src/css/custom.css"

# Developer B focuses on User Story 2 (Button Removal & Verification)
Task: "- [ ] T016 [P] [US2] Hide the "Docusaurus tutorial - 5 minutes" button using CSS (e.g., `display: none;` or `visibility: hidden;`) in my-website/src/css/custom.css based on the identified selector."
# Verification tasks (T017-T019) would ideally follow after US1's styling is complete.
```

---

## Implementation Strategy

### MVP First (User Story 1 Focus)

1.  Complete Phase 1: Setup
2.  Complete Phase 2: Foundational (CRITICAL - enables all styling and removal tasks)
3.  Complete Phase 3: User Story 1 (All styling tasks T011-T015)
4.  **STOP and VALIDATE**: Verify the new homepage theme independently.
5.  Deploy/demo if ready for initial visual feedback.

### Incremental Delivery (Adding User Story 2)

1.  After MVP (US1) is complete and validated:
2.  Complete Phase 4: User Story 2 (T016-T019)
3.  **STOP and VALIDATE**: Verify button removal and ensure no regressions on other pages.
4.  Deploy/demo the fully styled and streamlined homepage.

### Parallel Team Strategy (if applicable)

With multiple developers, after Phase 1 & 2 are completed:

1.  Developer A: Focuses on Phase 3 (User Story 1 - Homepage Styling).
2.  Developer B: Focuses on Phase 4 (User Story 2 - Button Removal and Regression Checks).
    *   Developer B's verification tasks (T017-T019) would ideally start after Developer A has completed their styling work to ensure a complete and accurate check of the final state.

---

## Notes

-   [P] tasks = potentially parallelizable, often involves different parts of the CSS file or independent checks.
-   [Story] label maps task to specific user story for traceability.
-   Each user story should be independently completable and testable at its checkpoint.
-   Verify changes in the browser after each significant task.
-   Commit after each task or logical group of related changes.
-   Stop at any checkpoint to validate story independently.
-   Avoid: vague tasks, same file conflicts, cross-story dependencies that break independence.
