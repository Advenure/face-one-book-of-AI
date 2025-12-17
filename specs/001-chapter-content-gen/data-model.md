# Data Model: Generate Physical AI Chapter Content

**Date**: December 7, 2025
**Feature**: specs/001-chapter-content-gen/spec.md
**Plan**: specs/001-chapter-content-gen/plan.md

## Entities

### 1. Chapter File

*   **Description**: Represents a specific Markdown file (`.md`) intended to hold generated chapter content within the Docusaurus documentation project.
*   **Attributes**:
    *   `file_path` (string): The absolute or relative path to the Markdown file (e.g., `my-website/docs/chapters/chapter1.md`).
    *   `front_matter` (YAML object): The YAML front matter block at the beginning of the Markdown file, containing metadata like `id`, `title`, `sidebar_label`. This block must be preserved during content generation.
    *   `body_content` (Markdown string): The main content of the chapter, which will be generated and placed after the front matter.
*   **Validation Rules**:
    *   `file_path` must point to an existing Markdown file within `my-website/docs/chapters/`.
    *   `front_matter` must be valid YAML and conform to Docusaurus expectations.
    *   `body_content` must adhere to Docusaurus-compatible Markdown syntax, including H1, H2, H3 headings.
*   **Relationships**:
    *   Is populated by a **Content Generation Request**.

### 2. Content Generation Request

*   **Description**: An internal representation of the instruction to generate content for a specific chapter file. This is initiated implicitly by the agent's task execution.
*   **Attributes**:
    *   `target_file_path` (string): The `file_path` of the **Chapter File** to be populated.
    *   `chapter_topic` (string): The specific topic for the chapter, derived from the file's title or context (e.g., "Foundations of AI for Robotics").
    *   `chapter_number` (integer): The numerical order of the chapter (e.g., 1 for "chapter1.md").
    *   `chapter_context` (text/Markdown): Any relevant context from previous chapters or explicit instructions that should influence the generated content, ensuring continuity and logical flow.
    *   `thematic_elements` (array of strings): The required elements to include (Definitions, Explanations, Real-world applications, etc.).
    *   `style_constraints` (object): Specifies style rules (Academic English, clear, structured, Docusaurus-friendly Markdown, no Tailwind/UI code, no external search).
*   **Validation Rules**:
    *   `target_file_path` must correspond to an existing `Chapter File`.
    *   `chapter_topic` must align with the "Physical AI only" scope.
    *   Generated content from this request must fulfill all `thematic_elements` and `style_constraints`.
*   **Relationships**:
    *   Triggers the generation of `body_content` for a **Chapter File**.
