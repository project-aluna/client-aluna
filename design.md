# design.md — Aluna

Version: 2.0
Product: Aluna
Platform: Mobile App
Design Direction: Atmospheric Calm Wellness System

---

# 1. Design Philosophy

Aluna bukan aplikasi produktivitas.

Aluna adalah:

> ruang kecil yang membantu hidup terasa lebih tenang, lebih terurus, dan lebih manageable.

Semua elemen visual Aluna harus terasa:

* lembut
* hangat
* emosional
* breathable
* calming
* personal

Bukan:

* dashboard kerja
* productivity machine
* startup AI app
* planner kaku
* self-improvement agresif

---

# 2. Emotional Design Goal

Ketika user membuka Aluna, yang harus terasa:

> “hidup gue mungkin belum beres, tapi setidaknya sekarang terasa sedikit lebih ringan.”

Aluna harus menjadi:

* emotional comfort app
* digital safe space
* soft structure untuk kehidupan sehari-hari

Bukan:

* performance tracker
* discipline monitor
* optimization system

---

# 3. Visual Identity

## Core Feeling

Visual Aluna harus terasa seperti:

* soft morning light
* skincare night routine
* kamar yang tenang
* jurnal personal modern
* sore yang pelan
* self-care realistis

---

## Visual Keywords

* atmospheric
* dreamy
* calming
* feminine mature
* emotionally warm
* editorial
* cozy
* soft luxury

---

# 4. Design Formula

```txt
40% calm minimalism
30% emotional atmosphere
20% warm lifestyle aesthetic
10% editorial softness
```

---

# 5. Color System

## Color Philosophy

Warna Aluna harus:

* terasa hidup
* emotionally rich
* calming
* memorable
* soft
* breathable

Bukan:

* flat beige everywhere
* monochrome SaaS
* neon playful
* hyper colorful

---

# 6. Primary Color Palette

# 6.1 Soft Cloud

## Hex

`#F8F4F1`

## Usage

* main background
* base surfaces
* empty state background

## Feeling

* soft
* breathable
* premium neutral

---

# 6.2 Dusty Rose

## Hex

`#C98C8C`

## Usage

* primary CTA
* active state
* emotional highlights
* onboarding accent

## Feeling

* emotional warmth
* mature femininity
* comfort

---

# 6.3 Soft Apricot

## Hex

`#E8B38B`

## Usage

* morning routines
* positive warmth
* gradient lighting
* highlight cards

## Feeling

* gentle energy
* optimistic
* morning calm

---

# 6.4 Mist Lavender

## Hex

`#A79BCF`

## Usage

* reflection section
* night routines
* emotional cards

## Feeling

* calm evening
* introspective
* soft emotional depth

---

# 6.5 Muted Sage

## Hex

`#9CAF9D`

## Usage

* completed state
* positive feedback
* grounding visuals

## Feeling

* restorative
* grounded
* peaceful

---

# 6.6 Powder Blue

## Hex

`#C7D8E8`

## Usage

* mood section
* calming surfaces
* airy backgrounds

## Feeling

* emotional clarity
* lightness
* softness

---

# 6.7 Cocoa Ink

## Hex

`#352A2A`

## Usage

* headings
* primary text
* dark surfaces
* icon color

## Feeling

* grounded
* elegant
* premium

---

# 7. Emotional Color Mapping

| Feature         | Main Colors         |
| --------------- | ------------------- |
| Morning Routine | Apricot + Cloud     |
| Night Routine   | Lavender + Cocoa    |
| Mood Tracking   | Powder Blue + Sage  |
| Reflection      | Lavender + Rose     |
| Premium         | Rose + Cocoa        |
| Empty State     | Cloud + Powder Blue |
| Success State   | Sage                |
| CTA             | Dusty Rose          |

---

# 8. Gradient System

## Gradient Philosophy

Aluna heavily menggunakan:

* soft gradients
* atmospheric lighting
* blurry color transitions

Karena:
consumer emotional app menang di atmosphere.

---

# 8.1 Morning Calm

```txt
#F8F4F1 → #E8B38B
```

Feeling:
soft sunrise.

---

# 8.2 Evening Reset

```txt
#A79BCF → #C98C8C
```

Feeling:
night routine calmness.

---

# 8.3 Emotional Clarity

```txt
#C7D8E8 → #F8F4F1
```

Feeling:
airy emotional space.

---

# 8.4 Grounding Calm

```txt
#9CAF9D → #F8F4F1
```

Feeling:
restorative calm.

---

# 9. Background System

## Important Rule

Do NOT use:

* flat white background
* pure gray surfaces
* plain dashboard layout

---

## Background Structure

Gunakan:

* subtle gradients
* blurry glow blobs
* atmospheric depth
* layered lighting

Tapi:
subtle.

Bukan Dribbble overdesign.

---

## Example Layering

```txt
Base cloud background
+
large soft apricot blur
+
small lavender glow
+
subtle grain
```

---

# 10. Surface Design

## Surface Direction

Cards harus terasa:

* soft
* layered
* tactile
* atmospheric
* warm

---

## Main Surface Style

* slightly tinted background
* soft gradient overlay
* low contrast border
* rounded corners besar
* subtle shadow
* breathing spacing

---

## Avoid

❌ flat white cards
❌ hard gray border
❌ enterprise dashboard UI
❌ glassmorphism berlebihan
❌ sharp rectangular layout

---

# 11. Typography System

## Typography Philosophy

Typography Aluna harus terasa:

* human
* breathable
* elegant
* emotional
* calm

---

# 11.1 Font Pairing

## Heading Font

Instrument Serif

---

## Body Font

Plus Jakarta Sans

---

# 11.2 Typography Feeling

## Heading

Should feel:

* editorial
* soft luxury
* emotionally warm

---

## Body

Should feel:

* readable
* friendly
* modern
* calm

---

# 11.3 Typography Rules

Avoid:

* super bold text
* condensed fonts
* aggressive hierarchy
* uppercase overload

Prefer:

* generous spacing
* medium weight
* soft rhythm
* airy layout

---

# 12. Motion System

## Motion Philosophy

Semua animasi harus terasa:

> seperti napas pelan.

Motion bukan untuk:

* impress user
* flashy interaction
* gamification

Motion untuk:

* emotional comfort
* softness
* atmosphere
* calm flow

---

# 13. Motion Keywords

* fluid
* dreamy
* soft
* floating
* organic
* atmospheric
* gentle

---

# 14. Motion Rules

## DO

✅ soft fade
✅ subtle slide
✅ gentle scale
✅ blur transition
✅ ambient movement
✅ floating gradients
✅ slow easing

---

## DON'T

❌ bounce keras
❌ overshoot animation
❌ elastic spring
❌ flashy swipe
❌ gaming feedback
❌ fast motion
❌ TikTok flashy transitions

---

# 15. Recommended Easing

Use:

* easeOutCubic
* easeInOutQuart

Avoid:

* bouncy easing
* overshoot curves

---

# 16. Motion Timing

## Micro Interaction

120–180ms

Usage:

* button tap
* chip select
* checkbox
* toggle

---

## Screen Transition

300–450ms

Usage:

* page transition
* modal
* bottom sheet

---

## Ambient Motion

6–12 seconds loop

Usage:

* gradient movement
* floating blur
* background atmosphere

---

# 17. Motion by Feature

# 17.1 Today Screen

Use:

* slow floating gradients
* staggered card fade
* subtle upward motion

Feeling:

> hidup bergerak pelan.

---

# 17.2 Routine Completion

Use:

* soft scale animation
* subtle glow
* smooth checkbox transition

Avoid:
❌ confetti
❌ XP effects
❌ game reward feeling

---

# 17.3 Mood Logging

Use:

* soft color transition
* glow selected state
* subtle pulse

Feeling:

> emotional acknowledgement.

---

# 17.4 Onboarding

Use:

* typography fade
* atmospheric blur movement
* layered gradients
* soft parallax

Feeling:

> entering a calming digital space.

---

# 17.5 Bottom Sheet

Use:

* floating upward motion
* delayed backdrop blur
* smooth fade

Avoid:
❌ aggressive snap animation

---

# 18. Today Screen (Most Important)

Today screen adalah:

> jantung emotional retention Aluna.

Harus:

* screenshot-worthy
* calming
* emotionally warm
* visually breathable

---

# 18.1 Today Structure

## Top Area

* atmospheric gradient
* greeting
* emotional headline
* floating blur

---

## Middle Area

* colorful routine cards
* clear hierarchy
* smooth spacing

---

## Bottom Area

* mood quick log
* reflection teaser
* empty breathing space

---

# 18.2 Emotional Headlines

Examples:

* hari ini pelan-pelan aja ✨
* satu langkah kecil juga berarti
* semoga harimu terasa lebih ringan
* hidup gak harus langsung beres

---

# 19. Component Direction

# 19.1 Buttons

## Primary Button

* Dusty Rose background
* white text
* pill shape
* subtle shadow

Feeling:
warm & comforting.

---

## Secondary Button

* tinted background
* Cocoa Ink text
* soft border

---

## Ghost Button

* transparent
* low opacity text
* soft hover glow

---

# 19.2 Routine Cards

Routine cards adalah:
hero visual utama Aluna.

Direction:

* colorful gradients
* soft shadows
* icon bubbles
* layered surfaces
* emotional atmosphere

---

# 19.3 Mood Selector

Avoid:
❌ emoji picker generik

Direction:

* soft color pills
* glowing selected state
* tactile feeling
* emotional gradients

---

# 19.4 Progress UI

Avoid:
❌ harsh productivity bars
❌ gamified XP visuals

Use:

* flowing progress
* rounded capsules
* soft gradients
* calm animations

---

# 20. Onboarding Direction

Onboarding harus terasa:

* welcoming
* magical but grounded
* emotionally soft
* premium
* breathable

---

## Use

* fullscreen gradients
* centered layout
* editorial typography
* floating blur shapes
* large whitespace

---

## Avoid

❌ form terlalu panjang
❌ onboarding corporate
❌ instructional overload
❌ productivity messaging

---

# 21. Dark Mode

## Philosophy

Dark mode bukan:

# AMOLED black.

Dark mode Aluna adalah:

# cozy night atmosphere.

---

## Dark Colors

### Background

`#221B22`

### Surface

`#302633`

### Text

`#F6EFE8`

### Accent

* Dusty Rose
* Mist Lavender

---

## Feeling

* night skincare routine
* cozy evening
* emotional softness
* midnight calm

---

# 22. Copywriting Direction

## Tone

* calm
* empathetic
* grounded
* human
* emotionally supportive

---

## Avoid

❌ startup jargon
❌ hustle culture
❌ motivational pressure
❌ toxic productivity

---

## Prefer

* pelan-pelan aja
* cukup satu langkah kecil
* hari ini tetap berarti
* gak apa-apa kalau belum sempurna

---

# 23. Content-Friendly UI

Karena Aluna heavily social-content driven:

UI harus:

* screenshot-friendly
* carousel-friendly
* recognizable
* emotionally visual

---

## Every Screen Should

* punya color identity
* punya emotional atmosphere
* punya whitespace besar
* terlihat bagus di crop TikTok

---

# 24. Anti-Patterns

Jangan lakukan ini:

❌ dashboard SaaS look
❌ flat startup UI
❌ hard shadows
❌ neon gradients
❌ monochrome beige everywhere
❌ over-analytics
❌ gamification toxic
❌ generic fintech layout
❌ kawaii overload
❌ enterprise cards

---

# 25. Final Design Direction

Aluna bukan:

> habit tracker aesthetic biasa.

Aluna adalah:

> emotionally calming digital space untuk perempuan yang ingin hidup terasa sedikit lebih tenang dan teratur.

Core feeling:

* soft
* atmospheric
* calming
* warm
* emotionally rich
* visually comforting

Final design principle:

> colorful enough to feel alive.
> calm enough to return to every day.
