# Quickstart Guide: Homepage Visual Theme Update

This guide provides instructions to quickly set up the Docusaurus development environment and verify the homepage visual theme updates.

## 1. Prerequisites

-   Node.js (LTS version recommended)
-   npm or Yarn (npm recommended)
-   Git

## 2. Setup the Project

1.  **Clone the repository (if not already cloned):**
    ```bash
    git clone [your_repository_url]
    cd hackatone
    ```
2.  **Switch to the feature branch:**
    ```bash
    git checkout 001-homepage-style-update
    ```
3.  **Navigate to the Docusaurus project directory:**
    ```bash
    cd my-website
    ```
4.  **Install dependencies:**
    ```bash
    npm install
    # or
    yarn install
    ```

## 3. Run the Docusaurus Development Server

1.  **Start the development server:**
    ```bash
    npm start
    # or
    yarn start
    ```
2.  **Open your browser:**
    The Docusaurus site should open in your default browser at `http://localhost:3000` (or another port if 3000 is in use).

## 4. Verify Homepage Visual Theme Updates

Navigate to the main homepage (`http://localhost:3000`).

**Verify the following visual changes (Acceptance Scenarios from spec):**

-   **Modern & Elegant Theme**: Observe that the homepage displays a modern, elegant, and robotics-inspired visual theme.
-   **Background Color**: Confirm the background color is updated to a modern Physical AI theme.
-   **Button Styles**: Check that buttons exhibit improved styles (colors, hover effects, border radius).
-   **Font Styles & Headings**: Verify that font styles and heading designs are of premium quality.
-   **Color Palette**: Ensure a clean, modern color palette (e.g., Deep Navy, Matte Black, Cyber Orange, Neon Blue, or similar futuristic colors) is applied consistently.
-   **Button Removal**: Confirm that the button labeled "Docusaurus tutorial - 5 minutes" is **not visible** on the homepage.
-   **No Regressions**: Navigate to other pages (e.g., `/docs/intro`) to ensure no unintended visual or functional changes have occurred.

## 5. Clean Up (Optional)

To stop the development server, press `Ctrl+C` in the terminal where it is running.
