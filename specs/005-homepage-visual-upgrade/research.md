# Research & Design Decisions: Homepage Visual Upgrade

This document outlines the design choices and technical research for the homepage's futuristic, premium visual theme.

## 1. Color Palette

**Decision**: A dark-themed palette with electric blue accents will be used to evoke a futuristic, "Physical AI / Robotics" feel.

**Rationale**: Dark themes are common in tech and developer-focused websites, providing a modern aesthetic that reduces eye strain. The electric blue accent color creates a strong visual contrast and is thematically linked to energy, technology, and robotics.

**Palette**:
-   **Primary Background**: `#0D1117` (A very dark, near-black slate gray)
-   **Secondary Background / Card Background**: `#161B22` (A slightly lighter dark gray for depth)
-   **Primary Text**: `#C9D1D9` (A light gray for high readability on dark backgrounds)
-   **Heading Text**: `#FFFFFF` (Pure white for maximum emphasis)
-   **Accent / Link Color**: `#58A6FF` (A vibrant, accessible blue)
-   **Accent Hover**: `#80BFFF` (A lighter blue for interactive feedback)
-   **Button Background**: `#238636` (A green for primary call-to-action, indicating a positive action)
-   **Button Hover**: `#2EA043` (A slightly lighter green for hover)

*Note: The green for the button is a standard Docusaurus color that can be kept for familiarity, or changed to the accent blue.*

## 2. Typography

**Decision**: The system's default UI font stack will be used for performance and native feel, with adjustments to size and weight for improved hierarchy.

**Rationale**: Using a system font stack (`-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif`) is the most performant option, requiring no font file downloads. It also ensures the site feels native to the user's operating system. The focus will be on creating a clear visual hierarchy through font size, weight, and color.

**Typography Scale**:
-   **Hero Title**: `4rem`, `700` weight
-   **H1 (Page Title)**: `2.5rem`, `700` weight
-   **H2 (Section Headings)**: `2rem`, `600` weight
-   **H3 (Card Titles)**: `1.5rem`, `600` weight
-   **Body/Paragraph**: `1rem` (16px), `400` weight
-   **Links/Buttons**: `1rem`, `600` weight

## 3. Spacing and Layout

**Decision**: A consistent spacing scale based on an 8px grid will be used for margins, padding, and gaps.

**Rationale**: An 8px grid system is a design industry standard that creates a visually harmonious and rhythmic layout. It ensures consistency and makes component alignment predictable.

**Spacing Scale**:
-   **Small**: `8px` (`0.5rem`)
-   **Medium**: `16px` (`1rem`)
-   **Large**: `32px` (`2rem`)
-   **X-Large**: `64px` (`4rem`)

## 4. UI Polish & Interactivity

**Decision**: CSS transitions will be used for smooth hover effects on interactive elements. Subtle box shadows will be added to cards to create a "floating" effect.

**Rationale**: Smooth transitions and subtle shadows add a premium feel to the UI without being distracting. They provide important visual feedback to the user, indicating what is interactive.

**Implementation**:
-   **Transitions**: Use the `transition` property on `color`, `background-color`, and `transform` for a duration of `0.2s` with an `ease-in-out` timing function.
-   **Card Hover**: Apply a `transform: translateY(-4px)` effect on hover to lift the card slightly.
-   **Box Shadow**: A soft, diffused box shadow like `0 8px 24px rgba(0, 0, 0, 0.4)` will be applied to cards.
