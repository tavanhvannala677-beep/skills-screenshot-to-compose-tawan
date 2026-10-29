---
name: screenshot-to-compose
description: Implement or adjust one existing Android screen from a screenshot or Figma reference using native Kotlin and Jetpack Compose. Use when the user asks to reproduce, match, or fix a UI based on an image. Preserve existing architecture, components, behavior, and unrelated screens.
---

# Screenshot to Jetpack Compose

## Goal
Implement the requested screen as closely as possible to the supplied screenshot while preserving the existing Grabtamp Customer application.

## Mandatory workflow
1. Inspect the repository structure, Git status, and relevant existing screen files.
2. Identify the exact target screen, its route, state, ViewModel, and dependencies.
3. Inspect existing design-system components, theme tokens, icons, assets, typography, spacing, and colors before writing new UI code.
4. Treat the supplied screenshot or Figma reference as the visual source of truth. Match layout, alignment, spacing, sizes, colors, typography, borders, radii, icons, and visible states as closely as practical.
5. Reuse existing components and navigation whenever possible.
6. Make the smallest possible changes to implement the requested screen.
7. Build and run relevant tests when the environment permits.
8. Review the final diff and report any unverified visual differences.

## Strict scope restrictions
- Use native Kotlin and Jetpack Compose. Do not replace the app with React, Flutter, HTML, or another framework.
- Do not create a new Gradle module unless the user explicitly requests it.
- Do not refactor unrelated screens, shared components, navigation, architecture, or business logic.
- Do not rename or move existing files unless strictly necessary and approved.
- Do not replace existing design-system components just to simplify implementation.
- Do not change existing UI behavior unless the requested task requires it.
- Do not invent missing content or interactions. Ask the user if an ambiguity materially affects the implementation.
- Do not overwrite unrelated user changes or revert existing work.
- Never run destructive Git commands or discard uncommitted changes.
- Do not claim the UI is pixel-perfect unless it has been visually verified.

## Screenshot implementation rules
- Inspect the whole screenshot and identify its major layout regions.
- Determine which existing composables correspond to those regions.
- Prefer existing theme values and assets over hardcoded duplicates.
- Keep spacing and sizing consistent with the project's established conventions.
- Preserve existing loading, error, empty, and interaction states unless asked otherwise.
- Make only the requested screen responsive changes when necessary.
- Do not apply blur or dim effects to the entire screen when the reference limits those effects to a specific overlay or component.

## Verification
- Check `git diff` before finishing.
- Run the narrowest relevant Gradle build or tests available.
- If a build fails, distinguish new failures from pre-existing failures when possible.
- If screenshot rendering is available, compare the implementation with the reference.
- Do not make unrelated edits to fix unrelated test failures.

## Final report
Summarize:
1. Files changed and why.
2. How the implementation matches the reference.
3. Build and test results.
4. Any remaining visual differences or limitations.
