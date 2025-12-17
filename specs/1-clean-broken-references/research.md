# Research: Clean Broken Project References

**Date**: 2025-12-17
**Feature**: [Link to spec.md]

## Detection Strategy

### Decision: Hybrid Approach (Static Analysis + File System Checks)

**Rationale**: A robust detection mechanism requires both analyzing code/configuration files for references and verifying the existence of the referenced targets on the file system. Relying solely on static analysis might miss dynamically referenced but non-existent files, while only checking file system references without context would be inefficient.

**Alternatives considered**:
-   **Pure Static Analysis**: Insufficient for confirming actual file existence.
-   **Pure File System Scan**: Inefficient and lacks context of how files are referenced within the project.

### Tools/Techniques for Detection:

1.  **Codebase Search (e.g., `ripgrep`, `grep` for PowerShell)**:
    *   **Purpose**: Identify import statements, links, image sources, and Docusaurus configuration entries that contain file paths or page references.
    *   **Pattern Matching**: Utilize regular expressions to find common reference patterns in `.js`, `.ts`, `.tsx`, `.md`, `.mdx`, `.json`, `.yml`, `.html`, and Docusaurus config files (`docusaurus.config.js/ts`, `sidebars.js/ts`).
2.  **Docusaurus-specific Configuration Parsers**:
    *   **Purpose**: Directly parse `docusaurus.config.js/ts`, `sidebars.js/ts`, and other relevant configuration files to extract navigation links, doc/blog paths, and plugin configurations.
    *   **Rationale**: Ensures accurate identification of Docusaurus's internal linking mechanisms.
3.  **File System Traversal**:
    *   **Purpose**: Recursively list all files and directories in the project to create an authoritative list of existing resources.
    *   **Tools**: PowerShell `Get-ChildItem` or Node.js `fs` module.

## Verification Strategy

### Decision: Real-time File System Existence Check

**Rationale**: For each detected reference, the most reliable way to verify its validity is to check if the corresponding file or directory actually exists on the file system. This directly addresses the core problem of broken references.

**Alternatives considered**:
-   **Caching file existence**: Could lead to stale data if files are added/removed during the cleanup process.
-   **External metadata**: Not applicable; direct file system check is most accurate.

### Process:

1.  For each identified reference string (e.g., a path like `./docs/chapter1.md`, `/img/logo.svg`, or a Docusaurus route like `/docs/introduction`):
2.  **Normalize Path**: Convert the reference string into an absolute file system path, taking into account Docusaurus routing conventions (e.g., `/docs/introduction` might map to `my-website/docs/introduction.md`).
3.  **Existence Check**: Use `Test-Path` in PowerShell or `fs.existsSync` in Node.js to determine if the normalized path points to an existing file or directory.

## Safe Removal Strategy

### Decision: Targeted, Atomic Replacements

**Rationale**: To ensure safety and prevent unintended side effects, each invalid reference must be removed precisely without altering surrounding valid code or introducing new issues.

**Alternatives considered**:
-   **Line-based deletion**: Too blunt, could remove valid code on the same line.
-   **Commenting out**: Creates code clutter and doesn't fully resolve the "broken reference" problem.

### Process:

1.  **Identify Exact Match**: The removal tool must be able to precisely locate the identified invalid reference string within its containing file.
2.  **Replace with Empty String**: The invalid reference should be replaced with an empty string, effectively deleting it. For import statements, the entire line or import clause containing the reference might need to be removed.
3.  **Transactional Changes (if possible)**: Implement changes in a way that allows for easy rollback if an issue is detected during post-cleanup validation (e.g., using `git stash` or atomic file writes).

## Docusaurus & Vercel Safety

### Decision: Post-cleanup Build & Deployment Simulation

**Rationale**: The ultimate validation of the cleanup process is a successful Docusaurus build and the absence of 404 errors on a deployed instance.

**Process**:

1.  **Run `npm run build`**: Execute the Docusaurus build command to catch any build-time errors or warnings related to missing files or broken links that were missed during detection.
2.  **Simulate Deployment Check**: Although direct Vercel deployment is outside the scope of the cleanup tool, the success of `npm run build` and local sanity checks (e.g., running `npm run serve` and manually navigating) will serve as strong indicators of deployment readiness. Automated checks for 404s can be integrated into CI/CD pipelines.

## Technologies to Consider

-   **PowerShell**: For scripting file system operations, text processing, and orchestrating the cleanup. Its integration with the Windows environment makes it suitable.
-   **Node.js/TypeScript**: For more complex parsing of Docusaurus configuration files and potentially for cross-platform compatibility if the tool needs to run on non-Windows environments. `fs` module for file operations, `path` module for path manipulation.
-   **`ripgrep` (or equivalent)**: For fast and efficient content searching across the codebase.
-   **`git`**: To verify if a file existed historically (e.g., checking git history for deleted files if a direct file system check is insufficient) and for managing changes (staging, committing).