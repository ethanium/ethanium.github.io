# Ethanium Design Direction

## Intent

Ethanium should feel calm, capable, and unusually clear. It helps teams make
complex business work easier to understand, so the interface should never add
noise, decoration, or uncertainty.

This is an original design system for Ethanium. It takes inspiration from three
complementary points of view:

- **Apple Human Interface Guidelines:** purposeful simplicity, clear hierarchy,
  familiar patterns, direct language, and carefully considered details.
- **Katie Dill's product-design leadership at Stripe:** meticulous craft,
  reviewing real user journeys instead of abstractions, and treating quality as
  a shared responsibility across design, product, and engineering.
- **Taste Skill (anti-slop frontend rules):** a catalogue of the patterns that
  make a site look templated or machine-generated, and a mechanical pre-flight
  check that catches them before publishing.

The result is not an imitation of any of them. Apple supplies the restraint and
usability standard. Katie Dill's quality practice raises the bar for the
details that earn trust. Taste Skill names the specific clichés to keep out.
This does not mean copying Stripe's visual identity. For a B2B software studio,
clarity always wins when tradeoffs are required.

## Design read

Every page, section, or redesign starts from one line stating what we are
building. For the site as a whole:

> **Reading this as:** a B2B custom-software studio site for operations leads
> and business owners, with a calm, trust-first language, leaning toward
> native HTML and CSS, the system font stack, and restrained motion.

If a new page reads differently (for example, a long-form case study or a
campaign landing page), write its own design read before building it, and
adjust the dials below on purpose rather than by drift.

### Dials

Taste Skill describes layout, motion, and density as three 1-10 dials. Ethanium
sits deliberately low on all three:

| Dial | Value | What it means here |
| --- | --- | --- |
| `DESIGN_VARIANCE` | **4** | Mostly regular grids. Left-aligned headings, an occasional offset or mixed aspect ratio. No masonry, no artsy empty zones. |
| `MOTION_INTENSITY` | **3** | Essentially static. One small entrance on the homepage, hover and focus states, nothing that loops. |
| `VISUAL_DENSITY` | **3** | Airy. Generous section spacing, short copy, one idea per section. |

Blog and editorial pages use the same values. Raising a dial requires a written
reason in the change description. Never raise one just because a pattern looks
impressive.

## Brand qualities

| We should feel | We should avoid |
| --- | --- |
| Clear and composed | Clever or cryptic |
| Practical and capable | Cold enterprise jargon |
| Polished and deliberate | Glossy decoration for its own sake |
| Human and collaborative | Casual, vague, or overly familiar |
| Quietly confident | Loud, sales-heavy claims |
| Specific and real | Templated, generic, "AI-made" |

## Core principles

1. **Start with the job to be done.** Each page should make its purpose,
   primary action, and next step obvious without explanation.
2. **Create hierarchy before adding style.** Use grouping, alignment, scale,
   whitespace, and contrast to establish reading order. Decoration is never a
   substitute for structure.
3. **Make complexity legible.** Break workflows into meaningful stages and use
   plain labels. Show enough context for a person to move work forward.
4. **Use craft to build trust.** Spacing, copy, image crops, focus states, and
   responsive behavior are part of the product, not polish for later. Hold
   details to the same standard as the main feature.
5. **Review journeys, not isolated parts.** Walk a meaningful path as a visitor
   would: arrive, understand the offer, assess the work, and make contact. Fix
   the friction in that flow before adding a new component.
6. **Give the work room to speak.** Portfolio screenshots and case studies are
   evidence. Present them cleanly, with concise context rather than competing
   visual effects.
7. **Reach past the defaults.** If a pattern is what any generated landing page
   would do (eyebrow above every heading, three equal feature cards, centered
   hero over a gradient), assume it is wrong for us until it earns its place.

## Foundations

### Stack

The site is Jekyll with hand-written HTML, one stylesheet
(`assets/css/site.css`), and one small script (`assets/js/site.js`). Keep it
that way. Taste Skill's React, Tailwind, Motion, and GSAP guidance does not
apply here. Translate its intent into plain CSS instead:

- Use CSS Grid for multi-column layouts, not flexbox percentage math.
- Use `min-height: 100dvh` rather than `100vh` for any full-height block.
- Use `IntersectionObserver` or CSS for scroll-linked effects. Never attach a
  `scroll` event listener.
- Do not add a dependency, framework, or icon library without a design reason
  that this document can record.

### Color

The palette is intentionally narrow and content-first. Use blue only to signal
an interactive or important action; it should retain that meaning.

| Token | Value | Use |
| --- | --- | --- |
| `--paper` | `#fff` | Main page background |
| `--white` | `#f5f5f7` | Soft section and media background |
| `--ink` | `#1d1d1f` | Primary text |
| `--ink-soft` | `#424245` | Supporting dark text when needed |
| `--muted` | `#6e6e73` | Secondary copy and metadata |
| `--line` | `#d2d2d7` | Reserved; no dividers or borders use it today |
| `--coral` | `#06c` | Links, focus rings, and primary actions |

Rules:

- **One accent, locked.** Blue (`--coral`) is the only accent on every page. A
  section never introduces its own color for a badge, status, or button.
- **One gray family.** The grays above are cool neutrals. Do not mix in warm
  grays, cream, or beige.
- No gradients, glows, gradient text, decorative color fields, or a second
  accent without a specific communication purpose.
- Never use pure black (`#000`) for text. `#fff` is used as the page
  background on purpose, in the Apple manner; do not use it for text on
  light surfaces.
- Do not use color as the only way to communicate status or meaning.
- **Theme:** the site is light-only by deliberate choice. Sections never invert
  to a dark band mid-page. If dark mode is added later, it is added for the
  whole site at once, through the same tokens under
  `@media (prefers-color-scheme: dark)`, and every page is checked in both
  modes.

### Typography

Use the platform system stack for both headings and body copy:

```css
-apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
```

This keeps the site fast, familiar, and highly legible. Headings are semibold,
not extra-bold, and use tight line-height (`1.08`-`1.2`). Body copy is regular
weight with comfortable line-height and a measure of about `65ch`. Keep prose
concise and prefer sentence case.

Recommended hierarchy:

| Element | Size | Weight | Notes |
| --- | --- | --- | --- |
| Page hero | `clamp(42px, 5.5vw, 68px)` | 600 | One idea; maximum two lines at desktop |
| Section heading | `clamp(36px, 4vw, 54px)` | 600 | Pair with a short supporting paragraph |
| Card heading | `20-24px` | 500-600 | Describe the work plainly |
| Body | `16-19px` | 400 | Favor short paragraphs |
| Metadata / kicker | `12-13px` | 400-500 | Rationed; see "Kickers" below |

Type rules:

- **No webfonts, no serif.** A serif display face is the most common sign of a
  generated "premium" site. Ethanium stays on the system sans.
- **Emphasis stays in the same family.** Highlight a phrase with weight or
  color (as the hero's `<span>` does), never by switching to another typeface.
- Control hierarchy with weight and color before reaching for raw size. An H1
  that needs four lines is a font-size error, not a copy error.

### Shape

One radius system, applied everywhere:

| Element | Radius |
| --- | --- |
| Buttons, chips, hint pills | Fully rounded (`22px` on a `42px` button, `999px` on chips) |
| Containers that need a frame (modal, media panel) | `16px` |
| Small circular markers | `50%` |

Do not introduce square buttons, `8px` cards, or a new radius without updating
this table.

### Space and layout

The frame follows apple.com's measurements and breakpoints, set as tokens on
`:root` (`--content-width`, `--gutter`, `--section-pad`):

| Viewport | Content width | Section padding (top and bottom) |
| --- | --- | --- |
| Above `1068px` | `980px` (with `22px` minimum gutters) | `100px` |
| `735px`-`1068px` | `692px` | `80px` |
| `734px` and below | `87.5%` of the viewport | `60px` |

Blog and article pages use a `692px` reading column at every size above
mobile. Change the tokens, not individual sections, when the rhythm needs
adjusting.

**No borders or divider lines.** Like Apple, separate content with whitespace
and with alternating section backgrounds (`--paper` and `--white`), never with
hairlines. Adjacent sections must not share a background; when a section is
added or removed, re-alternate the sequence. Inside a section, group with
spacing and grid gaps. Media tiles sit on the opposite surface to their
section (white tiles on a gray section) with the `16px` radius instead of an
outline.

The current system uses four columns for process steps (two below `1068px`),
two columns for case studies, and a single-column reading flow for articles.
Collapse grids before their content becomes cramped, and write the
narrow-screen fallback for every multi-column block in the same change, not
later.

Layout rules borrowed from Taste Skill:

- **No two sections share a layout family.** The process section, the
  portfolio grid, the foundation section, and the contact block should each
  look structurally different.
- **No zigzag runs.** At most two consecutive image-and-text splits.
- **No three equal feature cards in a row.** Use a list, a two-column split, or
  an asymmetric grid instead.
- **No split section headers** (big headline on the left, small floating
  paragraph on the right) unless the right column holds something real. Stack
  heading and body instead.
- **Exact cell counts.** A grid has exactly as many cells as there is content.
  Never pad with a blank or filler tile.
- **Long lists change shape.** More than five items become grouped columns or
  a card grid, not a long list with a line under every row.

## Components and behavior

### Navigation

The header mirrors Apple's global nav: `44px` tall, sticky, a translucent
`rgb(250 250 252 / 80%)` background with `saturate(180%) blur(20px)`, and no
bottom border. Its content spans up to `980px` with `22px` side padding
(`16px` on mobile) and does not narrow with the tablet content column. Links
are `12px` with `-0.01em` tracking and `8px` horizontal padding. Limit primary
navigation to the few destinations that matter.
Labels should be familiar nouns or verbs (`Approach`, `Portfolio`, `Contact`),
not marketing language.

### Footer

The footer mirrors Apple's global footer: `--white` background, `12px` text at
line-height `1.33337` and `-0.01em` tracking in `--muted`, `17px` top and
`21px` bottom padding, the same content width as the page, and no top border.

### Hero

The hero is one moment, not a feature list. It must fit in the first viewport
at desktop with the primary action visible without scrolling.

- At most four text elements: an optional kicker, the headline (two lines max),
  supporting text (20 words max), and actions (one primary, one optional
  secondary link).
- No trust strips, client logos, pricing hints, or taglines under the buttons.
  Those belong in their own section below the hero.
- Top padding stays modest (around `96px` max at desktop). If the hero feels
  empty, grow the type or the image, not the padding.
- A hero needs a real visual: actual product screenshots or photography, never
  a gradient blob or a mock UI built from `<div>` boxes.

### Kickers

A kicker is the small label above a heading (`.eyebrow`, `.section-kicker`).
Generated sites put one above every section, which produces a templated rhythm.

- **At most one kicker per three sections.** The hero counts as one.
- If a section has a kicker, the next two do not.
- A kicker names the topic in plain words. No numbering (`01 /`, `002 ·`), no
  version stamps (`BETA`, `v2`), no poetic labels ("Field notes", "On the
  bench").
- When in doubt, delete it. The heading alone is enough.

### Buttons and links

Use one visual primary action per area. Primary buttons are blue, fully
rounded, at least `42px` high, and their label fits on one line at desktop
(three words or fewer is ideal). Secondary actions remain text links. Link
labels should explain the destination or outcome; avoid generic labels such as
"Click here" or "Learn more."

**One label per intent.** Every action that leads to contacting Ethanium uses
the same label across the page and the site (header, hero, sections, footer).
The same applies to "see the work" actions. Two different labels for the same
intent read as indecision.

Button text must pass WCAG AA contrast (4.5:1) against the button, and a
pressed state may use a subtle `transform: scale(0.98)`.

All keyboard-focusable controls must retain the visible blue focus ring:

```css
outline: 2px solid var(--coral);
outline-offset: 4px;
```

### Sections and cards

Sections should have one clear subject: a kicker is optional (and rationed), a
heading is required, and supporting copy earns its place. Default content shape:
a heading of about eight words or fewer, a paragraph of about 25 words or fewer,
then one visual or one action.

Prefer open layouts and spacing-led groupings over boxed cards. If a card is
needed, reserve it for a distinct object or action, not a way to fill empty
space. Shadows are rare; when one is used it is soft and low-opacity, never a
hard black drop shadow.

### Images and portfolio work

Screenshots are displayed on the soft neutral surface with `object-fit:
contain` so they are not cropped into ambiguous fragments. Use accurate,
descriptive alt text. Allow only subtle hover feedback (`scale(1.01)`), never
dramatic zooms, parallax, or autoplaying media.

- Use real screenshots of real work. Never stock placeholders, never fake
  dashboards assembled from styled `<div>`s.
- No labels, pills, or tags laid over images, except the existing on-hover
  preview hint. Context goes in a caption below or beside the image.
- No decorative photo credits or pseudo-catalogue captions ("Plate 03").
- No hand-drawn decorative SVG illustrations.

When new original photography or art direction is introduced, favor one
confident image with a clear focal point over a collage. Treat every image,
caption, and crop as part of the visitor's decision-making journey, keeping the
portfolio informative and professional.

### Motion

Motion should orient, not entertain. Every animation must answer "what does
this communicate?" with one of: hierarchy, sequence, feedback, or a change of
state. "It looks nice" is not an answer.

- Keep transitions short (`150`-`350ms`) and animate only `transform` and
  `opacity`.
- The homepage uses a single, small upward entrance. Do not add looping
  animation, marquees, parallax, scroll hijacking, custom cursors, or magnetic
  buttons.
- Never make content, navigation, or an essential control depend on animation.
- Respect `prefers-reduced-motion` for all animations, transitions, and smooth
  scrolling.

## Content voice

Write like an experienced partner explaining a practical decision.

- Lead with a real business outcome: "Organize project data in one place."
- Use concrete language: "Map the work," "Structure the data," "Build the
  portal."
- Prefer short sentences, active verbs, and specific nouns.
- Explain the benefit before the implementation detail.
- Do not overpromise with claims such as "revolutionary," "seamless," or
  "best-in-class." The same goes for "elevate," "unleash," "next-gen," and
  "game-changer."
- **No em dashes or en dashes** in visible copy, including headings, buttons,
  alt text, and captions. Use a period, comma, colon, or parentheses. Ranges
  use a plain hyphen (`2024-2026`).
- **Ration the middle dot.** At most one `·` in a line of metadata; never use it
  as the default separator for lists of words.
- No scroll cues ("Scroll to explore"), weather, local-time, or decorative
  location strips. A single address or location in the footer or contact block
  is fine.
- No invented numbers. Every figure must come from a real project or be
  clearly marked as an example.
- Quotes are three lines or fewer, attributed with a name and role.

## Accessibility and quality bar

Every addition must work with keyboard navigation, have a visible focus state,
and remain understandable without color, motion, or images. Use semantic HTML
first; provide meaningful alt text; preserve a logical heading order; and test
at narrow widths as well as desktop.

### Pre-flight check

Run this before publishing any page or material change. If one box cannot be
honestly ticked, the change is not done.

**Purpose and structure**

- [ ] The design read is stated, and the dials have not drifted upward.
- [ ] The primary purpose and action are obvious.
- [ ] The hero fits the first viewport: headline two lines or fewer, supporting
      text 20 words or fewer, action visible, no extra strips.
- [ ] Kicker count is at most one per three sections.
- [ ] No two sections share a layout family; no three-card rows; no zigzag
      runs; no split headers; no empty grid cells.
- [ ] Every multi-column block has an explicit narrow-screen layout.

**Visual system**

- [ ] Blue is the only accent, used the same way on every section.
- [ ] One radius system, as listed under Shape.
- [ ] Light theme throughout, with no inverted sections.
- [ ] Images are real work; nothing is laid over them; no `<div>` mock UIs.

**Actions and copy**

- [ ] One primary action per area, label on one line, contrast at least 4.5:1.
- [ ] One label per intent across the page (contact, view work).
- [ ] Zero em dashes or en dashes in visible text; middle dots rationed.
- [ ] Every string re-read aloud: no broken grammar, no cute filler, no
      invented numbers, no banned buzzwords.

**Behavior and access**

- [ ] Every animation has a stated purpose and is disabled under reduced
      motion.
- [ ] Hover effects are also available on keyboard focus, or are unnecessary.
- [ ] Text is readable against its background at mobile widths.
- [ ] The page still feels precise after removing anything nonessential.

### Journey review

For a material page or interaction change, review the path a prospective client
takes rather than judging the new element in isolation:

1. Start from the page entry point at desktop and mobile widths.
2. Confirm the visitor can identify Ethanium's offer, review relevant work,
   and find the contact action without hunting.
3. Complete the same path with a keyboard and with reduced motion enabled.
4. Record any friction as a specific observation, then fix the highest-impact
   issue before pursuing visual refinement.

This is a small-site adaptation of Katie Dill's quality-review approach: the
experience must be useful and error-free first; the extra care should make it
feel trustworthy and considered.

## Reference inspiration

These references guide principles, not visual copying:

- [Apple Human Interface Guidelines: Design principles](https://developer.apple.com/design/human-interface-guidelines/design-principles)
- [Apple Human Interface Guidelines: Layout](https://developer.apple.com/design/human-interface-guidelines/layout)
- [Katie Dill on product craft and quality at Stripe](https://creatoreconomy.so/p/how-stripe-crafts-quality-products-katie-dill)
- [Katie Dill: Quality Control](https://podcasts.apple.com/ca/podcast/katie-dill-quality-control/id1818890725?i=1000751540610)
- [Taste Skill: anti-slop frontend rules](https://github.com/Leonxlnx/taste-skill) (the `taste-skill` and `minimalist-skill` variants)
