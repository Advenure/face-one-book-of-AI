# Data Model: Clean Broken Project References

**Date**: 2025-12-17
**Feature**: [Link to spec.md]

## Key Data Structures

This feature primarily interacts with representations of file system objects and code references within the project. While not a traditional "data model" with persistent entities, understanding these conceptual structures is crucial for the cleanup process.

### 1. Reference

Represents a single instance of a path, import, link, or other form of reference found within a source file.

-   **`source_file` (string)**: Absolute path to the file containing the reference.
-   **`reference_string` (string)**: The exact literal string of the reference as found in the `source_file`. This is crucial for precise removal.
-   **`normalized_path` (string)**: The absolute file system path that `reference_string` *should* resolve to, after accounting for relative paths, Docusaurus routing, etc. This is used for existence checks.
-   **`type` (enum: "import", "link", "route", "asset", "docusaurus_config", "other")**: Categorization of the reference for targeted processing.
-   **`exists` (boolean)**: Whether the target of the `normalized_path` actually exists on the file system. (Derived attribute).
-   **`is_broken` (boolean)**: `true` if `exists` is `false`. (Derived attribute).

### 2. FileSystemObject

Represents an item (file or directory) on the file system. Used for verification.

-   **`path` (string)**: Absolute path to the file or directory.
-   **`type` (enum: "file", "directory")**: Whether it's a file or a directory.
-   **`exists` (boolean)**: Indicates if the object currently exists.

### 3. DocusaurusConfigEntry

Represents a specific entry within Docusaurus configuration files (e.g., `docusaurus.config.ts`, `sidebars.ts`) that contains a reference.

-   **`config_file` (string)**: Path to the Docusaurus configuration file.
-   **`entry_path` (string)**: JSONPath or similar identifier to the specific entry within the config (e.g., `themeConfig.navbar.items[0].to`).
-   **`value` (string)**: The value of the configuration entry that represents a reference (e.g., `/docs/my-page`).
-   **`normalized_path` (string)**: The resolved file system path or Docusaurus route.
-   **`is_broken` (boolean)**: Whether the entry points to a non-existent target.

## Relationships

-   A `Reference` points to zero or one `FileSystemObject`.
-   A `DocusaurusConfigEntry` is a specialized form of `Reference` primarily interacting with Docusaurus-specific files and routes, also pointing to a `FileSystemObject`.

## Validation Rules (Implicit)

-   `reference_string` must be non-empty.
-   `normalized_path` must be a valid, absolute path or resolvable Docusaurus route.
-   `source_file` and `config_file` must exist.
-   The `is_broken` flag is derived and used as the primary criterion for removal.