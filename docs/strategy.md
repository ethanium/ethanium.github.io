# Ethanium Portal: competitive marketing strategy and pricing model

Internal planning draft. Written 2026-10-21 for the Ethanium owner. Not published on the site (see `exclude` in `_config.yml`).

Everything marked **Assumption**, **Hypothesis**, or **Target** is a starting point to test, not a fact. Competitor prices come from third-party summaries and must be checked on each vendor's own pricing page before anything is published.

## 1. What this draft decides

Ethanium stops being a custom software studio and becomes a company with **one product and one price list**.

| Decision | Choice |
| --- | --- |
| Product line | One product: **Ethanium Portal** (working name), a hosted workflow portal for B2B teams. |
| Consultancy | None. No custom development, no day rates, no paid implementation, no retainers. |
| Primary market | Philippine B2B teams of roughly 10 to 200 people. English-speaking remote teams are a secondary market served by the same product. |
| Pricing currency | Philippine peso first, with USD shown for reference. |
| Pricing metric | Per workspace, by live workflows and volume of work. Never per seat. |

**Assumption:** the product either exists or will be built from the capabilities already listed on the homepage (users and roles, search and filtering, import and export, approvals and notifications, reports and audit trails, APIs and scheduled tasks). This repository only holds the marketing site, so nothing here confirms the product is ready to sell.

**Assumption:** the ten portfolio projects are custom builds, mostly structured-information websites (property, booking, catalog, publishing, community, HR, manufacturing and ordering). They are evidence of delivery skill, not demos of Ethanium Portal. The site must not imply they run on the product unless that is true.

## 2. Operating rules that keep it a product

These rules are what "no consultancy" means in practice. Each one removes a service-revenue leak.

1. **No custom work at any price.** A request that does not fit goes on a public roadmap. Enterprise customers do not buy exceptions.
2. **No billable hours.** Onboarding is part of the product: templates, an Excel import wizard, an in-app guide, and a weekly group onboarding session open to every plan. No one-to-one implementation.
3. **Support is a plan feature,** with a stated response target per plan, not something sold by the hour.
4. **Integrations are built once,** for everyone, as product features.
5. **Partners may implement for their own clients** and keep their own fees. Ethanium sells no implementation. A referral arrangement is optional and comes later.

## 3. Customer and wedge

**Who buys.** An operations lead, office manager, or business owner at a Philippine company who runs a recurring process through Excel, email, and PDFs, and is tired of asking "which copy is current?" The homepage and the 2026-09-29 blog post already speak to this person.

**Entry use cases** (templates of one product, not separate products):

- Requests and approvals (purchase, leave, document sign-off)
- Client or vendor onboarding
- Inventory and reservation tracking (property units, equipment)

**Hypothesis:** a new entrant wins by being obviously right for one workflow, not by matching the feature list of platforms that have hundreds of staff. Lead with requests and approvals because every company has it. Property inventory and reservations is the strongest second wedge: three of the ten portfolio projects are property (DMCI Homes Projects, MWRFO Premier, Cerulean Residences), so there is real domain familiarity.

**Decision for the owner:** confirm the lead use case before building landing pages. The rest of this plan works with either.

## 4. Competitive landscape

Customers choose between several alternatives. The first is the real incumbent.

| Alternative | How it is priced (list, USD, annual billing) | Where it is strong | Where Ethanium can beat it |
| --- | --- | --- | --- |
| **Spreadsheets and email** | Already paid for | Familiar, instant, flexible | No ownership, no approvals, no audit trail, no single current copy. Ethanium imports the sheet and keeps the habit of tables. |
| **Airtable** | Team about $20, Business about $45 per editor per month | Flexible database, large template and community base | Per-editor pricing climbs fast with team size. Database-first, so approvals and roles take setup work. |
| **Softr** | Basic about $49 (20 app users), Professional about $139 (100 users), Business about $269 (500 users) | Closest like-for-like: builds portals on top of data, free tier | Limits end users, which is the people a portal exists for. No local billing or local support hours. |
| **Microsoft Power Apps** | Premium about $20 per user per month; third-party report of a $2 rise from 2027-01-01 | Deep Microsoft integration, trusted by IT | Needs a builder and licensing knowledge. Total cost is hard to predict. Overkill for a 15-person team. |
| **Zoho Creator** | Sources disagree: roughly $8 to $12 (Standard), $20 to $30 (Professional) per user per month | Cheap entry, broad Zoho suite, strong in the region | Builder-oriented. Per-user pricing again. |
| **Retool** | Business about $50 per builder plus about $15 per internal user | Powerful for engineering teams | Built for developers, not for operations leads. |
| **monday.com** | Standard about $12, Pro about $19 per seat, three-seat minimum | Well known, easy task tracking | Work management, not a custom data portal with roles and audit trails. |
| **Custom builds** (freelancers, dev shops, and Ethanium's own past model) | Project quotes | Exactly what you ask for | Slow, expensive, and every change is another quote. A fixed monthly price with templates removes both. |

Everything in the last column is a **Hypothesis** until customer interviews confirm it (section 9).

**What Ethanium cannot win on:** feature breadth, integrations count, brand recognition, free-tier generosity. Do not market against these.

**What Ethanium can win on:**

1. **Flat price, unlimited people.** Every well-known competitor above charges by seat, builder, or end user. A portal exists to be used by many people, so seat pricing is a tax on adoption.
2. **Start with one workflow.** Import a spreadsheet, pick a template, invite the team. This matches the site's existing promise: "Start with one workflow. Leave room to grow."
3. **Built for how Philippine businesses buy.** Peso pricing, local payment methods (to be evaluated: GCash, Maya, bank transfer, cards through a gateway that supports Philippine merchants), proper invoices, support in Manila hours, Taglish-friendly onboarding.
4. **Accountability built in.** Roles, approvals, and an audit trail on every plan, not only the top one.

## 5. Positioning and messaging

**Positioning statement.** For operations leads at Philippine B2B companies whose work lives in spreadsheets and email, Ethanium Portal is a workflow portal that turns one real process into a shared, trackable system. Unlike per-seat database tools and project-priced custom builds, it has one flat monthly price, ready-made workflows, and no consultants.

**Message pillars** (in the voice defined in `DESIGN.md`: plain, specific, no hype):

| Pillar | Proof to show |
| --- | --- |
| One flat price for the whole team | The pricing page and the break-even table in section 6 |
| Replace one spreadsheet this week | Import wizard demo, template gallery |
| Made for Philippine business | Peso invoicing, local support hours, data privacy practices (claim Data Privacy Act alignment only once it is true) |
| Every change is accounted for | Audit trail screenshot from the real product |

**Proof rules:** real screenshots of the real product, real customer quotes with name and role, and no invented numbers. Until there are customers, the proof is the product itself and the founder's track record of shipped work.

## 6. Pricing model

### Principles

1. **Charge for the value of the work, not the headcount.** Price rises with live workflows and volume, because that is what grows when a customer succeeds.
2. **Three plans, no custom quotes.** A visitor can pick a plan without talking to anyone.
3. **Every plan includes people, roles, audit trail, and Excel import and export.** Higher plans add scale and controls, not the basics.
4. **Be easier to predict than the competition.** One number per month.

### Value metric

A **live workflow** is one record type with its own statuses, forms, roles, and views (for example, "Purchase requests"). Plans cap live workflows, records, automation runs, and storage. They do not cap people.

**Risk:** "unlimited people" is generous. If a plan is abused, add a fair-use clause first and a people cap on Start only as a last resort.

### Plans (Hypothesis, all prices in PHP per workspace per month, before VAT)

| | **Start** | **Grow** | **Scale** |
| --- | --- | --- | --- |
| Monthly price | ₱1,990 | ₱5,990 | ₱14,990 |
| Annual price (two months free) | ₱19,900 | ₱59,900 | ₱149,900 |
| USD reference at ₱58 per $1 | about $34 | about $103 | about $258 |
| People | Unlimited | Unlimited | Unlimited |
| Live workflows | 1 | 5 | 20 |
| Records | 5,000 | 50,000 | 250,000 |
| Automation runs per month | 1,000 | 10,000 | 50,000 |
| Storage | 1 GB | 10 GB | 100 GB |
| Roles and audit trail | Yes | Yes | Yes |
| Multi-step approvals | Single step | Yes | Yes |
| API and scheduled tasks | No | Yes | Yes |
| Single sign-on and audit export | No | No | Yes |
| Support | Email, 2 business days | Email, 1 business day | Priority, same business day |

Limits are placeholders. Set them from the real hosting cost per record and per automation run once the product is measured. **Assumption:** the ₱58 per $1 rate and VAT treatment (the Philippine rate is 12%, whether prices include it depends on Ethanium's VAT registration, so confirm with an accountant).

### Why these prices

All figures are USD list prices on annual billing from third-party summaries, as of 2026-10-21.

| For a team where 10 people edit data | Monthly cost |
| --- | --- |
| Airtable Team, 10 editors | $200 |
| Airtable Business, 10 editors | $450 |
| Power Apps Premium, 10 users | $200 |
| Zoho Creator Professional, 10 users | $200 to $300 |
| Retool Business, 2 builders and 8 internal users | $220 |
| Softr Professional (up to 100 app users) | $139 |
| **Ethanium Grow, whole team** | **about $103** |

- **Start** sits about 30% under Softr Basic ($34 against $49). It is the cheapest way to try a real workflow, so the first purchase is easy.
- **Grow** is the plan most customers should land on. It costs less than per-seat tools once more than about five people edit data, and less than Airtable Business beyond about two or three editors.
- **Scale** is close to parity with Softr Business ($258 against $269). Compete on controls and support here, not on price.

Do not undercut further. A new entrant that is far cheaper than everyone reads as unproven, and low prices cannot fund support without a consultancy to subsidize it.

### Billing and policy

- **14-day free trial of Grow,** no card required. After the trial the workspace drops to read-only for 30 days, then is deleted with notice.
- **No permanent free plan at launch.** Softr, Airtable, Retool, and monday.com all offer one, so this is a real disadvantage. With no consulting revenue to absorb support load, revisit at about 100 paying accounts.
- **Annual billing:** two months free. Monthly billing stays available.
- **Founding customers:** the first 20 paying accounts keep their launch price for 24 months. State the real limit and the real end date. No countdowns.
- **No custom discounts.** The price list is the price list.
- **Add-ons are volume only:** extra records, runs, or storage in fixed packs. Never services.

### Illustrative economics (Assumption: example mix, not a forecast)

If accounts split 60% Start, 30% Grow, 10% Scale, average revenue per account is about ₱4,490 per month. 100 accounts is about ₱449,000 per month, or about ₱5.4 million a year. Accounts needed to break even is monthly running cost divided by (average revenue per account × gross margin). Fill in real costs before relying on any of this.

## 7. Go-to-market

No sales team, no proposals, no custom quotes. The funnel is self-serve:

**Visit → pick a template or import a sheet → trial → first workflow live → team invited → pay**

| Channel | What to do | Why |
| --- | --- | --- |
| **Search content** | Two posts a month on real queries (Excel approval workflow, replace a tracking spreadsheet). The 2026-09-29 post is the seed. | High intent, compounds, costs time not money. |
| **Template pages** | One indexable landing page per template (requests and approvals, onboarding, inventory and reservations). | Each page is both SEO and a product demo. |
| **Comparison pages** | "Ethanium vs Airtable", "vs Softr", "vs Power Apps", "vs Zoho Creator", "vs spreadsheets". Include honest rows where the competitor wins. | Buyers search these terms. Honesty builds trust and matches the site's voice. |
| **Founder-led LinkedIn** | Short posts on real workflows and what changed. | Existing profile, no cost, suits B2B buyers in Manila. |
| **Philippine communities** | Operations, HR, and SME groups on Facebook and LinkedIn. Answer questions first, mention the product second. | Where the buyer already asks for help. |
| **Referral partners** | Bookkeepers, accounting firms, IT resellers. Optional referral share on subscription revenue (Hypothesis: 20% for 12 months). | They see the spreadsheet problem first. |
| **Small paid search** | Only on comparison and template keywords, only after trial sign-ups are tracked. | A Google tag and Microsoft Clarity are already installed, so measurement is partly in place. |

**First 20 customers.** Start with the ten past clients and your own network. Offer the product, not a project. Treat every conversation as an interview (section 9).

**Do not do:** free bespoke pilots, RFP responses, hourly "setup" packages, or case studies that are really custom projects.

## 8. Metrics and targets

All targets are **Hypotheses** to be revised after the first 20 customers.

| Metric | Starting target |
| --- | --- |
| North star: workflows with at least one status change in the last 7 days | Grows week on week |
| Activation: first workflow live within 7 days (at least 10 records imported, at least 2 people invited) | 40% of trials |
| Trial to paid | 15% |
| Monthly account churn | 4% or lower |
| Start to Grow upgrades | Track from day one |
| Support load | Under 2 hours per account per month, or the plan limits are wrong |

## 9. Validate before building the rest

1. Interview at least 10 buyers (past clients included) about how they run one process today and what they pay for it. Ask about price last, and ask for a number before showing yours.
2. Confirm the lead use case and the three plan prices with them.
3. Set a kill criterion up front: for example, fewer than 3 of 10 interviewees say they would pay these prices for a ready product, so revisit the model before building more.

## 10. Retiring the consultancy

- Finish or hand over existing contracts. Do not sign new custom projects.
- Offer each past client a path onto the product. Decide whether any maintenance retainer ends at its current term or earlier.
- Relabel the portfolio honestly (section 12).

## 11. 90-day plan

| Days | Focus |
| --- | --- |
| 1 to 30 | Interviews, lead use case, final prices, payment gateway, VAT and invoicing set up, product readiness gap list. |
| 31 to 60 | Self-serve signup and trial, import wizard, first three templates, pricing page, one comparison page, tracking for trial and activation events. |
| 61 to 90 | Launch to past clients and network, first 20 customers, first four posts, partner outreach, review all section 8 metrics. |

## 12. What this changes on the site (not done yet)

No site files were changed. When prices are confirmed, these are the edits, with the rules from `DESIGN.md` applied:

| Where | Today | Change |
| --- | --- | --- |
| `index.html` title and description (lines 3 to 4), `_config.yml` line 5 | "custom web portals" | Describe one product. |
| `index.html` hero (lines 11 to 12) | "custom portals", "We help B2B teams" | Product language, still two lines and 20 words. |
| `index.html` engagement section (lines 98 to 106) | "tailor the project around what your team needs. Ongoing support can be arranged separately." | Remove. This is consultancy language. Replace with the trial action. |
| Every "Talk through a workflow" action (lines 14, 104) | Project inquiry | One label for one intent, for example "Start free trial" (or "Join the waitlist" until signup exists). |
| `index.html` work section (lines 64 to 78) | "Ten projects across different industries" | Relabel as past work. Do not say "built with Ethanium Portal" unless true. |
| `_includes/site-header.html` nav | Approach, Portfolio, Blog, Contact | Add Pricing before Contact. Keep the list short. |
| New `pricing/` page | None | Show plans as a comparison table, not three equal cards (`DESIGN.md` bans that row), with the break-even table. Prices must be real by then. |
| New comparison and template pages | None | One page each, in the design system. |

## 13. Risks

| Risk | Response |
| --- | --- |
| Product is not ready to sell | Section 9 comes first. Sell a waitlist, not a promise. |
| Revenue gap while moving off project income | Keep existing contracts to term. Set a runway number before stopping new projects. |
| Free tiers at Softr, Airtable, monday, Retool | Trial plus a low Start price. Revisit a free plan at about 100 accounts. |
| Unlimited people raises hosting cost | Measure cost per record and per run. Fair-use clause. |
| Customers ask for custom work | Roadmap vote, no exceptions. The rule is the strategy. |
| Competitor prices change | Re-verify before launch and every quarter. |
| Public repository | This file is excluded from the built site but is still readable on GitHub. Move it to a private location if the pricing or competitive notes should stay private. |

## 14. Sources (third-party, checked 2026-10-21, verify on vendor sites)

- Softr: [hackceleration.com](https://hackceleration.com/labs/softr-pricing), [vp0.com](https://vp0.com/blogs/softr-pricing-plans-2026/), [costbench.com](https://www.costbench.com/software/no-code/softr/)
- Airtable: [adalo.com](https://www.adalo.com/posts/airtable-pricing/), [jetadmin.io](https://www.jetadmin.io/blog/airtable-pricing-in-2026-plans-real-costs-and-when-to-upgrade/)
- Zoho Creator: [softwareadvice.com](https://www.softwareadvice.com/workflow/zoho-creator-profile), [costbench.com](https://costbench.com/software/no-code/zoho-creator/) (figures disagree between sources)
- Power Apps: [superblocks.com](https://www.superblocks.com/blog/powerapps-pricing), [cloudscout.one](https://app.cloudscout.one/evergreen-item/mc1470566/) (the 2027-01-01 increase is a third-party summary of a Microsoft message)
- Retool: [jetadmin.io](https://www.jetadmin.io/blog/retool-pricing-2026-plans-user-costs-add-ons/), [vendr.com](https://www.vendr.com/marketplace/retool)
- monday.com: [automationatlas.io](https://automationatlas.io/answers/monday-com-pricing-explained-2026/), [agiled.app](https://agiled.app/blog/monday-pricing)
