# Implementation Plan: Homepage Visual Theme Update

**Branch**: `001-homepage-style-update` | **Date**: 2025-12-07 | **Spec**: [specs/001-homepage-style-update/spec.md](specs/001-homepage-style-update/spec.md)
**Input**: Feature specification from `/specs/001-homepage-style-update/spec.md`

## Summary

This feature involves updating the visual theme of the main Docusaurus homepage within the `my-website` folder. The primary goal is to transform the homepage to reflect a modern, elegant, and robotics-inspired "Physical AI theme" using **Custom CSS only**. A key part of this update includes removing a specific button labeled "Docusaurus tutorial - 5 minutes". All other existing content and layout structure on the homepage must remain untouched, and no other files, pages, or components outside the homepage should be modified. The technical approach will focus on identifying and overriding Docusaurus's default styles and element visibility via `custom.css` and potentially module-specific CSS files if required, ensuring a clean visual upgrade without altering functionality or layout logic.

## Technical Context

**Language/Version**: TypeScript/JavaScript (Docusaurus frontend), CSS3  
**Primary Dependencies**: Docusaurus (existing project version)  
**Storage**: N/A (purely UI styling)  
**Testing**: Manual visual verification across common browsers; potential for visual regression testing if a framework is established. Verification of button removal via DOM inspection.  
**Target Platform**: Modern web browsers (Chrome, Firefox, Edge, Safari)  
**Project Type**: Web application (Docusaurus frontend)  
**Performance Goals**: Homepage loads within existing performance benchmarks (SC-003: no more than 5% increase in page load time).  
**Constraints**:
- No deletion of any files or components anywhere in the project.
- Only remove ONE element: the button that says "Docusaurus tutorial - 5 minutes".
- All other content must remain untouched.
- Styling changes strictly limited to Custom CSS only.
- Do not change layout structure or logic.
- Do not modify any other pages, components, or files outside the main homepage.
**Scale/Scope**: Affects only the main homepage (`my-website/src/pages/index.tsx`) of the Docusaurus website.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

- **I. Project Scope**: This feature aligns with the project scope as it involves styling a Docusaurus frontend for a "Physical AI" theme. (Pass)
- **II. Content Rules**: This feature is focused on UI styling rather than content generation and does not violate any content rules. (Pass)
- **III. Tool Rules**: This plan does not involve defining new tools or using web-search/external data. (Pass)
- **IV. Forbidden**: No web search, external queries, unrelated topics, or unsafe robotics instructions are involved. (Pass)
- **V. Output Rules**: The UI changes are on-topic for "Physical AI" and aim to support a clean UI, aligning with Docusaurus-compatible output. (Pass)

## Project Structure

### Documentation (this feature)

```text
specs/001-homepage-style-update/
├── plan.md              # This file (/sp.plan command output)
├── research.md          # Phase 0 output (/sp.plan command)
├── data-model.md        # Phase 1 output (/sp.plan command)
├── quickstart.md        # Phase 1 output (/sp.plan command)
├── contracts/           # Phase 1 output (/sp.plan command)
└── tasks.md             # Phase 2 output (/sp.tasks command - NOT created by /sp.plan)
```

### Source Code (repository root)

```text
my-website/
├── .docusaurus/
├── blog/
├── docs/
├── src/
│   ├── components/
│   │   └── HomepageFeatures/
│   │       ├── index.tsx      # Potential target for identifying elements, but CSS only change
│   │       └── styles.module.css # Potential target for CSS, but custom.css preferred
│   ├── css/
│   │   └── custom.css         # PRIMARY TARGET for custom CSS styling
│   └── pages/
│       ├── index.module.css   # Potential target for homepage specific CSS
│       ├── index.tsx          # Main homepage file - identify elements for CSS targeting
│       └── markdown-page.md
├── static/
├── docusaurus.config.ts
├── package.json
├── package-lock.json
├── README.md
├── sidebars.ts
└── tsconfig.json
```

**Structure Decision**: The project is a Docusaurus web application. The styling will be applied primarily within `my-website/src/css/custom.css`. Specific elements on the homepage (`my-website/src/pages/index.tsx`) and potentially `my-website/src/components/HomepageFeatures/index.tsx` will be targeted using CSS selectors. The existing Docusaurus structure will be maintained, with no modifications to HTML or React component files unless strictly necessary for selector identification (but changes will only be in CSS).

## Complexity Tracking
