# Implementation Plan: Upgrade UI to Premium Physical AI/Robotics Theme with Defined Palette

**Branch**: `003-ui-upgrade-theme` | **Date**: December 7, 2025 | **Spec**: specs/003-ui-upgrade-theme/spec.md
**Input**: Feature specification from `/specs/003-ui-upgrade-theme/spec.md`

## Summary

The plan is to upgrade the UI of the Docusaurus project to a premium, VIP-level design visually matching a high-end "Physical AI / Robotics" theme. This involves modifying `my-website/src/pages/index.tsx`, `my-website/src/components/HomepageFeatures/index.tsx`, and styling markdown pages in the `my-website/docs` folder. The styling will exclusively use custom CSS (`my-website/src/css/custom.css`), incorporating a specific color palette (Deep Navy #0A0F1C, Electric Orange #FF7A00, Neon Blue #4BA3FF, Soft Gray #E3E6EB), futuristic fonts, smooth animations, gradients, and subtle patterns. No TailwindCSS or external frameworks are permitted, and the existing project structure, logic, or components will not be altered.

## Technical Context

**Language/Version**: TypeScript, React (for Docusaurus components), CSS.
**Primary Dependencies**: Docusaurus, React.
**Storage**: Filesystem (for `.tsx` component files and `.css` stylesheet).
**Testing**: Visual inspection in web browsers across various devices/screen sizes. Use of browser developer tools to verify CSS implementation and absence of forbidden frameworks. Qualitative assessment by end-users.
**Target Platform**: Web (Docusaurus frontend, static site).
**Project Type**: Web Application (Frontend UI/UX enhancements).
**Performance Goals**: Maintain fast loading times. All animations, gradients, and visual effects must be smooth and performant, without causing noticeable lag or degrading user experience on standard modern devices.
**Constraints**:
*   No deletion or removal of any structure or component.
*   Only visuals are to be improved; no modification of logic.
*   Keep structure intact; only upgrade UI and theme.
*   Styling must be implemented exclusively using custom CSS (`my-website/src/css/custom.css`).
*   TailwindCSS, Bootstrap, or any other external CSS frameworks are strictly prohibited.
*   Specific color palette: Deep Navy (#0A0F1C), Electric Orange (#FF7A00), Neon Blue (#4BA3FF), Soft Gray (#E3E6EB).
*   Aesthetic requirements: futuristic, clean fonts; smooth hover effects and light animations; elegant, modern, outclass hero section, headings, buttons, feature cards; backgrounds may use gradients or subtle patterns matching Physical AI aesthetics.
*   Apply premium styling to the entire docs layout without deleting existing content.
**Scale/Scope**: Comprehensive UI enhancements for the primary homepage elements and all documentation content pages.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

**I. Project Scope**: "All generated content belongs only to **Physical AI** and **Humanoid Robotics**, prepared for a **Docusaurus frontend**."
*   **Compliance**: PASS. The UI theme is specifically designed for a "Physical AI / Robotics" theme and targets the Docusaurus frontend, fully aligning with this principle.

**II. Content Rules**:
*   "Write everything in **English**." - **Compliance**: N/A for UI styling directly, but implicitly, any textual elements within the UI (e.g., in `index.tsx`) will be in English.
*   "Style must be **research-focused**, **clean**, and **well-structured**." - **Compliance**: PASS. The feature requires a "clean, futuristic, robotics-inspired design," "futuristic, clean fonts," and "elegant, modern, and outclass" appearance, aligning with these principles.
*   "Use proper **Docusaurus markdown** (H1, H2, H3)." - **Compliance**: PASS. The spec requires applying premium styling to `docs` markdown pages, including headings, ensuring proper Docusaurus markdown presentation.
*   "Minimum sections: **Introduction, Syllabus, 6 Chapters, Labs, Research Papers, MCP Servers (7 servers)**." - **Compliance**: N/A. This feature is about styling, not content structure.
*   "No motivational or casual tone." - **Compliance**: PASS. The required "premium, VIP-level" and "elegant, modern, outclass" aesthetic for the UI avoids motivational or casual tones.

**III. Tool Rules**: "Define **7 tools** only as *rules*, not functional features: ... ❗ **No tool can use web-search or external data.**"
*   **Compliance**: PASS. The spec explicitly states "Custom CSS only (no Tailwind)", enforcing the constraint against external frameworks. The color palette is provided, reducing the need for external design data collection by the agent.

**IV. Forbidden**: "No web search, No external queries, No unrelated topics, No unsafe robotics instructions."
*   **Compliance**: PASS. The UI enhancements are explicitly focused on a "Physical AI / Robotics" theme (FR-002, FR-011), thereby avoiding "unrelated topics."

**V. Output Rules**: "Output must stay **on-topic** within Physical AI. Must follow **Docusaurus-compatible markdown**. Docs should support clean UI with **header, footer, hero section**."
*   **Compliance**: PASS. The spec directly aligns with styling for a premium Physical AI theme, Docusaurus-compatible appearance, and explicit enhancement of the hero section, headings, buttons, and feature cards.

## Project Structure

### Documentation (this feature)

```text
my-website/
├── docs/                 # Existing documentation markdown files (styling will be applied)
│   └── ... (all markdown pages)
├── src/
│   ├── components/
│   │   └── HomepageFeatures/
│   │       └── index.tsx # Targeted for UI modification (feature cards)
│   ├── css/
│   │   └── custom.css    # Primary stylesheet for all new custom CSS
│   └── pages/
│       └── index.tsx     # Targeted for UI modification (homepage/hero section)
└── ... (other Docusaurus project files like docusaurus.config.ts, sidebars.ts, package.json)
```

**Structure Decision**: This feature focuses exclusively on modifying the visual presentation within specified existing files and applying styling rules to existing markdown documents. It does not introduce new directories or alter the fundamental code structure of the Docusaurus application.

## Complexity Tracking

| Violation | Why Needed | Simpler Alternative Rejected Because |
|-----------|------------|-------------------------------------|
| N/A | N/A | N/A |