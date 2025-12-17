# Quickstart Guide: Generate Physical AI Chapter Content

**Date**: December 7, 2025
**Feature**: specs/001-chapter-content-gen/spec.md
**Plan**: specs/001-chapter-content-gen/plan.md

## Overview

This guide outlines the process to initiate the generation of content for existing chapter files within the Docusaurus documentation project.

## Prerequisites

*   **Existing Chapter Files**: Placeholder Markdown files for chapters (e.g., `my-website/docs/chapters/chapter1.md`, `chapter2.md`, etc.) must already exist with valid Docusaurus front matter.
*   **Agent Access**: This content generation process is typically executed by an AI agent with access to the project's files and the necessary internal knowledge base.

## Content Generation Process

To generate content for a specific chapter, you would provide an instruction to the AI agent, specifying the target chapter file and optionally any context or specific focus for that chapter.

**Example Instruction Format for Agent**:

```
"Generate detailed, academic content for chapter <Chapter Number> (e.g., 'Chapter 1: Foundations of Embodied AI') located at my-website/docs/chapters/chapter<Chapter Number>.md. Ensure it covers definitions, mechanisms, and real-world applications within Physical AI."
```

**Key Steps for Agent Execution**:

1.  **Identify Target File**: The agent will identify the specified `chapterX.md` file.
2.  **Read Existing Front Matter**: The agent will read the YAML front matter of the target file to preserve it.
3.  **Generate Body Content**: The agent will generate the detailed, research-oriented Markdown content for the chapter's body, adhering to all specified constraints (Physical AI only, thematic elements, academic style, Docusaurus markdown, no forbidden elements).
4.  **Populate File**: The agent will write the preserved front matter followed by the generated body content back into the `chapterX.md` file.

## Verification

After content generation, it is crucial to:

1.  **Review Content**: Manually review the generated content in the `chapterX.md` file for thematic accuracy, completeness of required elements, academic style, and adherence to Docusaurus markdown.
2.  **Docusaurus Preview**: Run the Docusaurus development server (`npm run start` from `my-website/`) to preview the rendered chapter in the browser and verify its formatting and visual presentation.

## Important Notes

*   This feature is focused on content *generation*, not content *creation* in terms of file structure. Placeholder chapter files are expected to exist.
*   The agent will adhere to all constraints outlined in the feature specification, especially regarding the prohibition of external searches and APIs for content.
