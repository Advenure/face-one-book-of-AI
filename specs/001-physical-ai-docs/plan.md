# Implementation Plan: Physical AI Book + Docusaurus Setup

**Branch**: `001-physical-ai-docs` | **Date**: December 7, 2025 | **Spec**: specs/001-physical-ai-docs/spec.md
**Input**: Feature specification from `/specs/001-physical-ai-docs/spec.md`

## Summary

The plan is to establish a Docusaurus documentation site for Physical AI & Robotics. This involves deleting existing content in `/my-website/docs`, populating it with new academic markdown content across specific sections (Introduction, Syllabus, 6+ Chapters, Labs, Research Papers, 7 MCP Servers), and styling the frontend (header, footer, hero section) with a "VIP premium theme style" using custom CSS only, without TailwindCSS. Core Docusaurus files like `/src/pages/index.tsx` and `/src/components/HomepageFeatures/index.tsx` will be updated to support the new UI and content presentation.

## Technical Context

**Language/Version**: TypeScript (implied by existing Docusaurus project structure and files)
**Primary Dependencies**: Docusaurus (established in `package.json`)
**Storage**: Filesystem (Markdown files within `my-website/docs`)
**Testing**: Docusaurus offers built-in capabilities for markdown rendering and link validity checks. Custom testing will involve visual inspection of UI and content adherence.
**Target Platform**: Web (Static site, deployable to any web server)
**Project Type**: Web (Frontend documentation site)
**Performance Goals**: Rapid static content loading, smooth navigation transitions, and responsive design across common breakpoints.
**Constraints**:
*   Content generation must not involve external web searches or API calls.
*   Styling must exclusively use custom CSS; TailwindCSS is strictly prohibited.
*   Minimum content requirements: Introduction, Syllabus, 6+ Chapters, Labs, Research Papers, and 7 MCP Servers.
**Scale/Scope**: Documentation for a comprehensive resource, targeting a moderate number of pages with academic depth.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

**I. Project Scope**: "All generated content belongs only to **Physical AI** and **Humanoid Robotics**, prepared for a **Docusaurus frontend**."
*   **Compliance**: PASS. The feature specification fully aligns with this principle, restricting content to the defined domain and utilizing Docusaurus.

**II. Content Rules**:
*   "Write everything in **English**." - **Compliance**: PASS (Assumed).
*   "Style must be **research-focused**, **clean**, and **well-structured**." - **Compliance**: PASS. The spec mandates academic, clean, and Docusaurus-friendly markdown.
*   "Use proper **Docusaurus markdown** (H1, H2, H3)." - **Compliance**: PASS. Explicitly stated in the spec.
*   "Minimum sections: **Introduction, Syllabus, 6 Chapters, Labs, Research Papers, MCP Servers (7 servers)**." - **Compliance**: PASS. Explicitly required in the spec.
*   "No motivational or casual tone." - **Compliance**: PASS. The spec emphasizes academic writing.

**III. Tool Rules**: "Define **7 tools** only as *rules*, not functional features: 1. Analysis 2. Rewrite 3. Structure 4. Chapter Builder 5. Research Formatter 6. Code Block 7. Docusaurus Formatter. ❗ **No tool can use web-search or external data.**"
*   **Compliance**: PASS. The spec explicitly states that content generation "MUST NOT involve making external web searches or API calls," which aligns with the tool rules. The specific tools listed are for the *content generation process*, not directly applicable to the Docusaurus setup plan itself, but the constraint on external data is upheld.

**IV. Forbidden**: "No web search, No external queries, No unrelated topics, No unsafe robotics instructions."
*   **Compliance**: PASS. The spec prohibits external searches/APIs for content generation and focuses solely on Physical AI, ensuring no unrelated topics.

**V. Output Rules**: "Output must stay **on-topic** within Physical AI. Must follow **Docusaurus-compatible markdown**. Docs should support clean UI with **header, footer, hero section**."
*   **Compliance**: PASS. All aspects are directly addressed and required by the feature specification's requirements and success criteria.

## Project Structure

### Documentation (this feature)

```text
my-website/
├── docs/                 # New Physical AI & Robotics documentation
│   ├── introduction.md
│   ├── syllabus.md
│   ├── chapters/
│   │   ├── chapter1.md
│   │   └── ...
│   ├── labs/
│   ├── research-papers/
│   └── mcp-servers/
│       ├── server1.md
│       └── ...
├── src/
│   ├── components/
│   │   └── HomepageFeatures/
│   │       └── index.tsx # To be updated for UI customization
│   ├── css/
│   │   └── custom.css    # To be used for "VIP premium theme style"
│   └── pages/
│       └── index.tsx     # To be updated for UI customization
```

**Structure Decision**: The plan leverages the existing Docusaurus application structure within the `my-website/` directory. The primary areas of modification will be the `my-website/docs` directory for content and specific files within `my-website/src` for UI customization.

## Complexity Tracking

| Violation | Why Needed | Simpler Alternative Rejected Because |
|-----------|------------|-------------------------------------|
| N/A | N/A | N/A |