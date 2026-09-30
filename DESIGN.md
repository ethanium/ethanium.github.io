# Ethanium Design Direction

## Intent

Ethanium should feel calm, capable, and unusually clear. It helps teams make
complex business work easier to understand, so the interface should never add
noise, decoration, or uncertainty.

This is an original design system for Ethanium. It takes inspiration from two
complementary points of view:

- **Apple Human Interface Guidelines:** purposeful simplicity, clear hierarchy,
  familiar patterns, direct language, and carefully considered details.
- **Katie Dill’s product-design leadership at Stripe:** meticulous craft,
  reviewing real user journeys instead of abstractions, and treating quality as
  a shared responsibility across design, product, and engineering.

The result is not an imitation of either: Apple supplies the restraint and
usability standard; Katie Dill's quality practice raises the bar for the
details that earn trust. This does not mean copying Stripe's visual identity.
For a B2B software studio, clarity always wins when tradeoffs are required.

## Brand qualities

| We should feel | We should avoid |
| --- | --- |
| Clear and composed | Clever or cryptic |
| Practical and capable | Cold enterprise jargon |
| Polished and deliberate | Glossy decoration for its own sake |
| Human and collaborative | Casual, vague, or overly familiar |
| Quietly confident | Loud, sales-heavy claims |

## Core principles

1. **Start with the job to be done.** Each page should make its purpose,
   primary action, and next step obvious without explanation.
2. **Create hierarchy before adding style.** Use grouping, alignment, scale,
   whitespace, and contrast to establish reading order. Decoration is never a
   substitute for structure.
3. **Make complexity legible.** Break workflows into meaningful stages and use
   plain labels. Show enough context for a person to move work forward.
4. **Use craft to build trust.** Spacing, copy, image crops, focus states, and
   responsive behavior are part of the product - not polish for later. Hold
   details to the same standard as the main feature.
5. **Review journeys, not isolated parts.** Walk a meaningful path as a visitor
   would: arrive, understand the offer, assess the work, and make contact. Fix
   the friction in that flow before adding a new component.
6. **Give the work room to speak.** Portfolio screenshots and case studies are
   evidence. Present them cleanly, with concise context rather than competing
   visual effects.

## Foundations

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
| `--line` | `#d2d2d7` | Dividers and low-emphasis borders |
| `--coral` | `#06c` | Links, focus rings, and primary actions |

Do not introduce gradients, decorative color fields, or a second accent color
without a specific communication purpose. Avoid using color as the sole means
of communicating status or meaning.

### Typography

Use the platform system stack for both headings and body copy:

```css
-apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
```

This keeps the site fast, familiar, and highly legible. Headings are
semibold—not extra-bold—and use tight, open line-height (`1.08`–`1.2`). Body
copy is regular weight with comfortable line-height. Keep prose concise and
prefer sentence case.

Recommended hierarchy:

| Element | Size | Weight | Notes |
| --- | --- | --- | --- |
| Page hero | `clamp(42px, 5.5vw, 68px)` | 600 | One idea; maximum two to three lines |
| Section heading | `clamp(36px, 4vw, 54px)` | 600 | Pair with a short supporting paragraph |
| Card heading | `20–24px` | 500–600 | Describe the work plainly |
| Body | `16–19px` | 400 | Favor short paragraphs |
| Metadata / kicker | `12–13px` | 400–500 | Use sparingly |

### Space and layout

The desktop content frame is `min(1160px, calc(100% - 48px))`; editorial and
blog content narrows to `820px`. Large sections use generous vertical space
(`72px`–`88px`) to separate ideas. On small screens, use `36px` side gutters
and reduce spacing without making the page feel compressed.

Use simple grids and thin rules to clarify relationships. The current system
uses four columns for process steps, two columns for case studies, and a
single-column reading flow for articles. Collapse grids before their content
becomes cramped.

## Components and behavior

### Navigation

Keep the header slim, stable, and easy to scan. Limit primary navigation to
the few destinations that matter. Labels should be familiar nouns or verbs
(`Approach`, `Portfolio`, `Contact`), not marketing language.

### Buttons and links

Use one visual primary action per area. Primary buttons are blue, rounded,
and at least `42px` high. Secondary actions remain text links. Link labels
should explain the destination or outcome; avoid generic labels such as
“Click here” or “Learn more.”

All keyboard-focusable controls must retain the visible blue focus ring:

```css
outline: 2px solid var(--coral);
outline-offset: 4px;
```

### Sections and cards

Sections should have one clear subject: a kicker is optional, a heading is
required, and supporting copy earns its place. Prefer open layouts and
divider-led groupings over boxed cards. If a card is needed, reserve it for a
distinct object or action, not a way to fill empty space.

### Images and portfolio work

Screenshots are displayed on the soft neutral surface with `object-fit:
contain` so they are not cropped into ambiguous fragments. Use accurate,
descriptive alt text. Allow only subtle hover feedback (`scale(1.01)`), never
dramatic zooms, parallax, or autoplaying media.

When new original photography or art direction is introduced, favor one
confident image with a clear focal point over a collage. Treat every image,
caption, and crop as part of the visitor's decision-making journey, keeping
the portfolio informative and professional.

### Motion

Motion should orient, not entertain. Keep transitions short and restrained;
the homepage uses a single, small upward entrance. Never make content,
navigation, or an essential control depend on animation. Respect
`prefers-reduced-motion` for all animations, transitions, and smooth scrolling.

## Content voice

Write like an experienced partner explaining a practical decision.

- Lead with a real business outcome: “Organize project data in one place.”
- Use concrete language: “Map the work,” “Structure the data,” “Build the
  portal.”
- Prefer short sentences, active verbs, and specific nouns.
- Explain the benefit before the implementation detail.
- Do not overpromise with claims such as “revolutionary,” “seamless,” or
  “best-in-class.”

## Accessibility and quality bar

Every addition must work with keyboard navigation, have a visible focus state,
and remain understandable without color, motion, or images. Use semantic HTML
first; provide meaningful alt text; preserve a logical heading order; and test
at narrow widths as well as desktop.

Before publishing, check:

- Is the primary purpose and action obvious?
- Does each visual element improve comprehension or trust?
- Is text readable against its background and at mobile widths?
- Are hover effects also available by keyboard focus or unnecessary?
- Does reduced-motion mode remain calm and complete?
- Does the page still feel precise after removing anything nonessential?

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
