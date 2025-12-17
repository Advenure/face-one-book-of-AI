# Data Model: Physical AI Book + Docusaurus Setup

**Date**: December 7, 2025
**Feature**: specs/001-physical-ai-docs/spec.md
**Plan**: specs/001-physical-ai-docs/plan.md

## Entities

### 1. Documentation Page

*   **Description**: Represents an individual piece of academic content within the Docusaurus site. Each page corresponds to a Markdown or MDX file.
*   **Attributes**:
    *   `title` (string): The display title of the page, used in navigation and page headers.
    *   `content` (markdown/mdx): The primary academic content of the page, formatted in Docusaurus-friendly Markdown.
    *   `id` (string, optional): A unique identifier for the page, often derived from the filename. Used by Docusaurus for routing.
    *   `sidebar_label` (string, optional): Text to display in the sidebar navigation for this page.
    *   `category` (string, optional): Used to group pages within the sidebar (e.g., 'Chapters', 'Labs').
    *   `slug` (string, optional): Custom URL path for the page.
    *   `tags` (array of strings, optional): Metadata for categorization and search.
*   **Validation Rules**:
    *   `content` must adhere to Docusaurus-compatible Markdown syntax.
    *   Page titles and content must be strictly within the scope of Physical AI, Robotics, Humanoid Robots, and Embodied AI Systems.
    *   Specific pages (Introduction, Syllabus, Chapters, Labs, Research Papers, MCP Servers) must exist.
    *   Chapters and MCP Servers must meet minimum count requirements (6+ chapters, 7 MCP servers).
*   **Relationships**:
    *   Belongs to a **Docusaurus Site**.
    *   Can be grouped into **Categories** within the Docusaurus navigation.

### 2. Docusaurus Site

*   **Description**: The static web application that hosts and renders the Documentation Pages. It provides navigation, search (if configured), and applies the overall UI theme.
*   **Attributes**:
    *   `configuration` (object): Defined in `docusaurus.config.ts`, controls site metadata, plugins, themes, and routing.
    *   `theme` (custom CSS): Custom styling applied to the site, particularly for the header, footer, hero section, and general UI elements.
    *   `navigation` (structure): Defined via `sidebars.ts` and `docusaurus.config.ts`, dictates how Documentation Pages are presented and linked.
*   **Validation Rules**:
    *   `configuration` must be valid Docusaurus configuration.
    *   Custom CSS must achieve the "VIP premium theme style" without using TailwindCSS.
    *   Navigation must correctly link to all required Documentation Pages.
*   **Relationships**:
    *   Hosts multiple **Documentation Pages**.
