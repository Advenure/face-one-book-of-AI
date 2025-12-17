# Quickstart Guide: Upgrade UI to Premium Physical AI/Robotics Theme with Defined Palette

**Date**: December 7, 2025
**Feature**: specs/003-ui-upgrade-theme/spec.md
**Plan**: specs/003-ui-upgrade-theme/plan.md

## Overview

This guide provides instructions to set up, build, and run the Docusaurus site locally to preview the UI enhancements for the "Physical AI / Robotics" theme.

## Prerequisites

*   **Node.js**: Version 18 or higher (check with `node -v`)
*   **npm**: Version 8 or higher (check with `npm -v`) or **Yarn**: (check with `yarn -v`)
*   **Project Dependencies**: All Docusaurus project dependencies must be installed (run `npm install` or `yarn install` in `my-website/`).

## Setup Instructions (if not already done)

1.  **Navigate to the project directory**:
    Open your terminal or command prompt and change your current directory to the `my-website` folder within the project root.
    ```bash
    cd my-website
    ```
2.  **Install dependencies**:
    If not already done, install all required Node.js packages.
    ```bash
    npm install
    # or if you prefer Yarn
    # yarn install
    ```

## Viewing UI Changes Locally

1.  **Start the Docusaurus development server**:
    This will build the site and serve it locally. Docusaurus will typically open your default web browser to `http://localhost:3000` (or another port if 3000 is in use).
    ```bash
    npm run start
    # or if you prefer Yarn
    # yarn start
    ```
    The site will hot-reload on changes to `my-website/src/pages/index.tsx`, `my-website/src/components/HomepageFeatures/index.tsx`, `my-website/src/css/custom.css`, and markdown files in `my-website/docs`.

## Verification

After starting the development server, navigate to:

*   **Homepage**: `http://localhost:3000/` (or your local host address) to verify the premium, VIP-level UI design, hero section, and feature cards (SC-001, SC-003, SC-005).
*   **Documentation Pages**: Navigate to a few documentation pages (e.g., `http://localhost:3000/docs/introduction`) to verify the high-quality, premium Physical AI theme applied to markdown content, headings, diagrams, and tables (SC-004).
*   **CSS Inspection**: Use your browser's developer tools to inspect the CSS and confirm that new styling is exclusively from `my-website/src/css/custom.css` and that no TailwindCSS or other external frameworks are in use (SC-002).

## Important Notes

*   This feature is solely focused on UI styling. No functional changes are expected.
*   Visual inspection is key for verifying the success of this feature.
