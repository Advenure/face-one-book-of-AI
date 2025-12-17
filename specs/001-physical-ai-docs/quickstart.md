# Quickstart Guide: Physical AI Book + Docusaurus Setup

**Date**: December 7, 2025
**Feature**: specs/001-physical-ai-docs/spec.md
**Plan**: specs/001-physical-ai-docs/plan.md

## Overview

This guide provides instructions to set up, build, and run the Docusaurus documentation site for Physical AI & Robotics locally.

## Prerequisites

Before you begin, ensure you have the following installed:

*   **Node.js**: Version 18 or higher (check with `node -v`)
*   **npm**: Version 8 or higher (check with `npm -v`) or **Yarn**: (check with `yarn -v`)

## Setup Instructions

1.  **Navigate to the project directory**:
    Open your terminal or command prompt and change your current directory to the `my-website` folder within the project root.
    ```bash
    cd my-website
    ```

2.  **Install dependencies**:
    Install all required Node.js packages.
    ```bash
    npm install
    # or if you prefer Yarn
    # yarn install
    ```

## Running the Development Server

Once dependencies are installed, you can start the local development server.

1.  **Start the Docusaurus server**:
    This will build the site and serve it locally. Docusaurus will open your default web browser to `http://localhost:3000` (or another port if 3000 is in use).
    ```bash
    npm run start
    # or if you prefer Yarn
    # yarn start
    ```
    The site will hot-reload on changes to Markdown files or source code.

## Building for Production

To create a static build of your documentation site, suitable for deployment:

1.  **Build the site**:
    This command generates static content into the `build` directory.
    ```bash
    npm run build
    # or if you prefer Yarn
    # yarn build
    ```
    The generated static files will be located in `my-website/build/`.

## Important Notes

*   Content for the documentation is located in `my-website/docs/`.
*   Custom styling is handled via `my-website/src/css/custom.css`.
*   Main entry points for UI customization are `my-website/src/pages/index.tsx` and `my-website/src/components/HomepageFeatures/index.tsx`.
