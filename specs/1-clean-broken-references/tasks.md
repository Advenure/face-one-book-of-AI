# Tasks: Clean Broken Project References

**Input**: Design documents from `specs/1-clean-broken-references/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: The examples below include test tasks. Tests are OPTIONAL - only include them if explicitly requested in the feature specification or if user requests TDD approach. This specification does not explicitly request tests for the cleanup tool itself, but rather validation steps.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

-   **[P]**: Can run in parallel (different files, no dependencies)
-   **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
-   Include exact file paths in descriptions

## Path Conventions

-   For this feature, scripts will reside in a new `scripts/cleanup/` directory at the project root.
-   The Docusaurus project is located at `my-website/`.

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Project initialization and basic structure for the cleanup tool

-   [ ] T001 Create `scripts/cleanup` directory for the tool's PowerShell modules.
-   [ ] T002 Ensure `ripgrep` is installed and accessible in the system's PATH, or provide installation instructions. (Assumption: `ripgrep` will be a prerequisite)
-   [ ] T003 Create `scripts/cleanup-broken-references.ps1` as the main entry point script.

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Core utilities and helper functions for file system and path operations that MUST be complete before the main cleanup logic.

-   [ ] T004 Create `scripts/cleanup/FileOperations.ps1` module for file system interactions.
-   [ ] T005 Implement `Get-ProjectFiles` function within `scripts/cleanup/FileOperations.ps1` to list all relevant project files in `my-website/`.
-   [ ] T006 Implement `Test-FilePathExists` function within `scripts/cleanup/FileOperations.ps1` to verify if a given absolute file system path exists.
-   [ ] T007 Create `scripts/cleanup/PathUtils.ps1` module for path normalization.
-   [ ] T008 Implement `Normalize-DocusaurusPath` function within `scripts/cleanup/PathUtils.ps1` to convert Docusaurus routes and relative paths found in code/configs to absolute file system paths.

---

## Phase 3: User Story 1 - Resolve 404 Errors on Deployment (Priority: P1) 🎯 MVP

**Goal**: Implement the core logic for detecting, verifying, and safely removing broken references, ensuring a successful Docusaurus build and no 404 errors on deployment.

**Independent Test**: Run `scripts/cleanup-broken-references.ps1`, then execute `npm run build` in `my-website/`. The build should succeed (exit code 0) and any previously known broken references should be removed.

### Detection

-   [ ] T009 [P] [US1] Create `scripts/cleanup/ReferenceDetector.ps1` module.
-   [ ] T010 [P] [US1] Implement `Find-BrokenCodeReferences` function within `scripts/cleanup/ReferenceDetector.ps1` to scan code/content files (`.js`, `.ts`, `.tsx`, `.md`, `.mdx`, `.json`, `.yml`, `.html`) for import/link patterns using `ripgrep`.
-   [ ] T011 [P] [US1] Implement `Get-DocusaurusConfigReferences` function within `scripts/cleanup/ReferenceDetector.ps1` to extract Docusaurus-specific references by parsing `my-website/docusaurus.config.ts` and `my-website/sidebars.ts`.

### Verification and Aggregation

-   [ ] T012 [US1] Create `scripts/cleanup/ReferenceVerifier.ps1` module.
-   [ ] T013 [US1] Implement `Verify-References` function within `scripts/cleanup/ReferenceVerifier.ps1` that takes a list of detected references, normalizes their paths using `Normalize-DocusaurusPath`, and uses `Test-FilePathExists` to mark each reference as `is_broken`.
-   [ ] T014 [US1] Implement `Aggregate-BrokenReferences` function within `scripts/cleanup/ReferenceVerifier.ps1` to compile a consolidated, unique list of `is_broken` references, grouping by source file.

### Removal

-   [ ] T015 [US1] Create `scripts/cleanup/ReferenceRemover.ps1` module.
-   [ ] T016 [US1] Implement `Remove-BrokenReference` function within `scripts/cleanup/ReferenceRemover.ps1` for targeted replacement of a specific `reference_string` within a `source_file` with an empty string, ensuring precision.
-   [ ] T017 [US1] Implement the main cleanup orchestration logic in `scripts/cleanup-broken-references.ps1` to call `Detect -> Verify -> Aggregate -> Remove`.

### Post-cleanup Validation

-   [ ] T018 [US1] Create `scripts/cleanup/DocusaurusValidator.ps1` module.
-   [ ] T019 [US1] Implement `Invoke-DocusaurusBuild` function within `scripts/cleanup/DocusaurusValidator.ps1` to execute `npm run build` in `my-website/` and capture its output and exit code.
-   [ ] T020 [US1] Integrate `Invoke-DocusaurusBuild` into `scripts/cleanup-broken-references.ps1` to run automatically after removal and report the build status.

**Checkpoint**: At this point, User Story 1 should be fully functional and testable independently

---

## Phase 4: Polish & Cross-Cutting Concerns

**Purpose**: Enhance the cleanup tool with logging, reporting, error handling, and ease of use.

-   [ ] T021 Create `scripts/cleanup/Logger.ps1` module.
-   [ ] T022 Implement detailed logging (to console and optionally to a file) for detected, verified, and removed references within `scripts/cleanup/Logger.ps1` and integrate into `cleanup-broken-references.ps1`.
-   [ ] T023 Enhance `scripts/cleanup-broken-references.ps1` with user-friendly console output for progress, summary of actions taken, and final validation results.
-   [ ] T024 Create `scripts/cleanup/ErrorHandling.ps1` module.
-   [ ] T025 Implement robust error handling within `scripts/cleanup/ErrorHandling.ps1` and integrate into all cleanup functions to manage file operation failures, `ripgrep` issues, and `npm` command errors.
-   [ ] T026 Add a new script entry to `my-website/package.json` (e.g., `"cleanup": "powershell -File ../scripts/cleanup-broken-references.ps1"`) for easy execution of the cleanup tool.
-   [ ] T027 Run through and validate the entire `quickstart.md` guide for the implemented tool.

---

## Dependencies & Execution Order

### Phase Dependencies

-   **Setup (Phase 1)**: No dependencies - can start immediately
-   **Foundational (Phase 2)**: Depends on Setup completion - BLOCKS all user stories
-   **User Stories (Phase 3+)**: All depend on Foundational phase completion
-   **Polish (Final Phase)**: Depends on all desired user stories being complete

### User Story Dependencies

-   **User Story 1 (P1)**: Can start after Foundational (Phase 2) - No dependencies on other stories

### Within Each User Story

-   Detection tasks (`T009`, `T010`, `T011`) can run in parallel.
-   Verification and Aggregation tasks (`T012`, `T013`, `T014`) depend on Detection.
-   Removal tasks (`T015`, `T016`, `T017`) depend on Verification and Aggregation.
-   Post-cleanup Validation tasks (`T018`, `T019`, `T020`) depend on Removal.

### Parallel Opportunities

-   `T009`, `T010`, `T011` (reference detection methods)
-   `T005`, `T006` (file operations)

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1.  Complete Phase 1: Setup
2.  Complete Phase 2: Foundational (CRITICAL - blocks all stories)
3.  Complete Phase 3: User Story 1
4.  **STOP and VALIDATE**: Test User Story 1 independently by running the `cleanup-broken-references.ps1` and `npm run build`.
5.  Deploy/demo if ready

### Incremental Delivery

Not applicable as there is only one user story for this feature.

### Parallel Team Strategy

Not applicable as there is only one user story for this feature.

---

## Notes

-   [P] tasks = different files, no dependencies
-   [Story] label maps task to specific user story for traceability
-   Each user story should be independently completable and testable
-   Verify tests fail before implementing (for PowerShell functions, consider unit tests or simple assertion-based checks)
-   Commit after each task or logical group
-   Stop at any checkpoint to validate story independently
-   Avoid: vague tasks, same file conflicts, cross-story dependencies that break independence