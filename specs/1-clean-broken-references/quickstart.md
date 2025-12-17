# Quickstart: Clean Broken Project References

**Date**: 2025-12-17
**Feature**: [Link to spec.md]

## How to use the cleanup tool (conceptual)

This `quickstart.md` provides a conceptual guide on how the "Clean Broken Project References" tool would be used, once implemented.

### Prerequisites

-   Node.js and npm installed (for Docusaurus project).
-   Git installed and configured.
-   PowerShell (for Windows environments, if the tool is implemented as a PowerShell script).

### Steps to Clean Your Project

1.  **Ensure a Clean Git State**:
    Before running the cleanup tool, ensure your Git working directory is clean. It's recommended to commit or stash any pending changes to prevent conflicts and enable easy rollback.

    ```bash
    git status
    git commit -am "Pre-cleanup backup" # Or git stash
    ```

2.  **Execute the Cleanup Tool**:
    The exact command will depend on the implementation of the cleanup tool (e.g., a PowerShell script, a Node.js CLI tool). Conceptually, it would be run from the project root:

    ```bash
    # Example for a PowerShell script
    .\scripts\cleanup-broken-references.ps1

    # Example for a Node.js CLI tool
    npm run cleanup-broken-references
    ```

    The tool will:
    -   Scan your project.
    -   Detect broken imports, links, and routes.
    -   Prompt for confirmation (optional, depending on strictness) or automatically remove invalid references.

3.  **Validate the Cleanup**:
    After the tool completes, you should validate the changes:

    *   **Check `git status`**: Review the changes made by the tool. Ensure only expected removals occurred.
    *   **Run Docusaurus Build**: Verify that the project still builds successfully.

        ```bash
        npm run build
        ```

    *   **Local Server Test**: Serve the Docusaurus site locally and navigate through it to ensure no new broken links were introduced and existing valid links still work.

        ```bash
        npm run serve
        ```

4.  **Deploy and Verify (Optional but Recommended)**:
    If the build is successful and local testing is satisfactory, deploy your cleaned project to your hosting environment (e.g., Vercel) and verify that no 404 NOT_FOUND errors are reported.

### Troubleshooting

-   **Unexpected removals**: If the tool removes something that was intended to be kept, you can easily revert the changes using Git: `git reset --hard HEAD~1` (if you committed before cleanup) or `git stash pop` (if you stashed).
-   **New build errors**: If `npm run build` fails after cleanup, review the build logs to identify the cause. It might indicate an undetected valid reference was removed, or a new issue was exposed.
