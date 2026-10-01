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

The palette is intentionally narrow and content-first. Use blue only for
interactive elements (links, buttons, focus). Never use it to highlight
non-interactive text: visitors read blue as "clickable" (Jakob's Law), and
keeping it rare is what makes the primary action stand out (Von Restorff
Effect).

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
without a specific communication purpose. Never use color as the sole means
of communicating status or meaning.

Contrast must meet WCAG 2.2 AA: at least 4.5:1 for body and small text, and
3:1 for large text (24px+, or 19px+ semibold), icons, control borders, and
focus rings. `--muted` passes on both `--paper` and `--white`, but only just,
so don't place it on anything darker or use it for essential information.

### Typography

Use the platform system stack for both headings and body copy:

```css
-apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
```

This keeps the site fast, familiar, and highly legible. Headings are
semibold—not extra-bold—and use tight line-height (`1.08`–`1.2`). Body copy
is regular weight with comfortable line-height (`1.45`–`1.75`). Keep prose
concise and prefer sentence case.

Limit reading lines to about 45–75 characters (`max-width: 68ch` or roughly
`680px` at 17px). Longer lines make the eye lose its place and add cognitive
load.

Recommended hierarchy:

| Element | Size | Weight | Notes |
| --- | --- | --- | --- |
| Page hero | `clamp(42px, 5.5vw, 68px)` | 600 | One idea; maximum two to three lines |
| Section heading | `clamp(36px, 4vw, 54px)` | 600 | Pair with a short supporting paragraph |
| Card heading | `20–24px` | 500–600 | Describe the work plainly |
| Body | `16–19px` | 400 | Favor short paragraphs |
| Metadata / kicker | `12–13px` | 400–500 | Use sparingly; never for essential information |

Text must stay readable and usable when zoomed to 200% (WCAG 1.4.4).

### Space and layout

The desktop content frame is `min(1160px, calc(100% - 48px))`; the editorial
and blog frame narrows to `820px`, but prose inside it follows the line-length
limit above. Large sections use generous vertical space (`72px`–`88px`) to
separate ideas. On small screens, use at least `18px` side gutters (`36px`
total) and reduce spacing without making the page feel compressed. Layouts
must reflow at `320px` wide with no horizontal scrolling (WCAG 1.4.10).

Group related things so the structure is visible at a glance (Gestalt
principles):

- **Proximity:** items that belong together sit closer to each other than to
  anything else. Space between groups must be clearly larger than space
  inside them.
- **Similarity:** items that do the same job look the same. Anything that
  looks different should behave differently.
- **Common region:** use a thin rule or the soft `--white` surface when
  spacing alone doesn't make a group clear enough.

The current system uses four columns for process steps, two columns for case
studies, and a single-column reading flow for articles. Collapse grids before
their content becomes cramped. Keep sections to a handful of chunks: people
hold only a few items in working memory (Miller's Law).

## Components and behavior

### Navigation

Keep the header slim, stable, and easy to scan. Limit primary navigation to
the few destinations that matter, since every extra choice slows the decision
(Hick's Law). Labels should be familiar nouns or verbs (`Approach`,
`Portfolio`, `Contact`), not marketing language. Follow conventions people
already know: logo top-left linking home, navigation in the header, and
`Contact` last, where the end of the list makes it easy to find and remember
(Jakob's Law, Serial Position Effect).

### Buttons and links

Use one visual primary action per area. Primary buttons are blue, rounded,
and at least `44px` high, the touch-target size recommended by Apple's HIG
(larger, closer targets are faster to hit, per Fitts's Law). Every other
clickable target, including text links in dense lists and close buttons,
must be at least `24×24px` or have equivalent spacing around it (WCAG 2.5.8).
Secondary actions remain text links. Link labels should explain the
destination or outcome; avoid generic labels such as “Click here” or “Learn
more.”

All keyboard-focusable controls must retain the visible blue focus ring:

```css
outline: 2px solid var(--coral);
outline-offset: 4px;
```

A focused element must never be hidden behind a sticky header, a modal, or
other overlapping content (WCAG 2.4.11). If the header becomes sticky, add a
matching `scroll-padding-top`.

### Forms and feedback

Ask only for what's needed to start a conversation; every extra field costs
completions. Accept input in whatever format people naturally type it
(Postel's Law), for example phone numbers with or without spaces or dashes.
Use visible labels (never placeholder-only), correct `type` and
`autocomplete` attributes, and error messages that say what went wrong and
how to fix it, placed next to the field. Confirm success clearly: the moment
after someone makes contact is the end of their journey, and people remember
endings strongly (Peak-End Rule).

### Sections and cards

Sections should have one clear subject: a kicker is optional, a heading is
required, and supporting copy earns its place. Prefer open layouts and
divider-led groupings over boxed cards. If a card is needed, reserve it for a
distinct object or action, not a way to fill empty space. When a whole card
is clickable, make the entire card the target, not only its title.

Curate rather than list everything: a few strong case studies persuade more
than many average ones, because too many options discourage people from
choosing any (Choice Overload).

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
navigation, or an essential control depend on animation. Content must be
visible even if an animation never runs. Respect `prefers-reduced-motion` for
all animations, transitions, and smooth scrolling. Interaction feedback
(hover, press, open, close) should be quick, `100–300ms`; entrance
animations should take no more than about `700ms`.

### Performance

Speed is part of usability. Respond to every interaction within `400ms`
(Doherty Threshold) and keep pages light: optimize and size images, lazy-load
anything below the fold, and avoid blocking scripts. Store images in
`assets/images/` as JPEG (quality ~82, at most `1440px` wide, ideally under
`700KB`); use PNG only when an image needs transparency. Reserve space for images
so content doesn't jump while the page loads (target CLS < 0.1, LCP < 2.5s).

## Content voice

Write like an experienced partner explaining a practical decision.

- Lead with a real business outcome: “Organize project data in one place.”
- Use concrete language: “Map the work,” “Structure the data,” “Build the
  portal.”
- Prefer short sentences, active verbs, and specific nouns.
- Explain the benefit before the implementation detail.
- Do not overpromise with claims such as “revolutionary,” “seamless,” or
  “best-in-class.”
- Write for skimmers. Most visitors scan before they read (Paradox of the
  Active User), so put the key point in the heading and the first sentence.
- Persuade honestly. Use real client outcomes as social proof; never use
  dark patterns such as fake urgency, guilt-trip wording, or hidden steps.

## Accessibility and quality bar

Every addition must work with keyboard navigation, have a visible focus state,
and remain understandable without color, motion, or images. Use semantic HTML
first; provide meaningful alt text; preserve a logical heading order; and test
at narrow widths as well as desktop.

Before publishing, check:

- Is the primary purpose and action obvious?
- Does each visual element improve comprehension or trust?
- Is text readable against its background (AA contrast) and at `320px`?
- Is every target large enough, and is the primary action the only blue
  button in its area?
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
- [Laws of UX](https://lawsofux.com/)
- [roadmap.sh: UX design](https://roadmap.sh/ux-design)
- [Nielsen Norman Group: 10 usability heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/)
- [WCAG 2.2](https://www.w3.org/TR/WCAG22/)
