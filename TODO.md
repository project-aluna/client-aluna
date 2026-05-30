# TODO.md — Aluna Frontend

Version: 2.0
Repo: aluna-frontend
Platform: Flutter Mobile App
Backend: Separate Repository
Design System: Atmospheric Calm Wellness UI
Status: Frontend Execution Plan

---

# 1. Frontend Goal

Frontend Aluna harus memvalidasi pengalaman utama:

> user membuka app, merasa tenang, melihat Daily Flow, menyelesaikan routine kecil, log mood, dan merasa hidup sedikit lebih manageable.

Fokus utama frontend:

* emotional UX
* atmospheric visuals
* Today screen retention
* onboarding comfort
* screenshot-worthy UI
* calming interactions
* soft motion system
* local mock data terlebih dahulu
* backend integration belakangan

---

# 2. Frontend Principles

* mobile-first
* emotional experience first
* UI harus calming dan atmospheric
* jangan terlihat seperti dashboard kerja
* build pakai mock data dulu
* frontend harus terasa “hidup” sebelum backend selesai
* semua screen harus visually breathable
* motion harus lembut dan organik
* copywriting harus human dan grounded

---

# 3. Phase 0 — Project Setup

## 3.1 Initialize Flutter Project

* [x] Create frontend repo
* [x] Init Flutter project
* [x] Set app name: Aluna
* [x] Set bundle id / package name
* [x] Setup Android config
* [x] Setup iOS config
* [x] Setup minimum SDK
* [x] Setup app launcher icon placeholder
* [x] Setup splash screen placeholder

---

## 3.2 Project Dependencies

Install:

* [x] flutter_riverpod
* [x] go_router
* [x] dio
* [x] hive
* [x] hive_flutter
* [x] flutter_local_notifications
* [x] intl
* [x] freezed_annotation
* [x] json_annotation
* [x] phosphor_flutter / lucide_icons
* [x] google_fonts
* [x] smooth_page_indicator
* [x] flutter_svg
* [x] shared_preferences

Dev dependencies:

* [x] build_runner
* [x] freezed
* [x] json_serializable
* [x] flutter_lints
* [x] hive_generator

---

# 4. Phase 1 — Folder Structure

Use feature-first structure.

```txt
lib/
  main.dart

  app/
    app.dart
    router/
      app_router.dart
      route_names.dart
    theme/
      app_theme.dart
      app_colors.dart
      app_typography.dart
      app_spacing.dart
      app_radius.dart
      app_shadows.dart
      app_gradients.dart
      app_motion.dart

  core/
    api/
    storage/
    errors/
    utils/
    widgets/

  data/
    mock/
    models/

  features/
    splash/
    onboarding/
    auth/
    today/
    routines/
    mood/
    reflection/
    reminders/
    subscription/
    profile/
```

---

# 5. Phase 2 — Atmospheric Design System

## 5.1 Color Tokens

Implement final atmospheric palette.

Primary palette:

* [x] Soft Cloud `#F8F4F1`
* [x] Dusty Rose `#C98C8C`
* [x] Soft Apricot `#E8B38B`
* [x] Mist Lavender `#A79BCF`
* [x] Muted Sage `#9CAF9D`
* [x] Powder Blue `#C7D8E8`
* [x] Cocoa Ink `#352A2A`

Dark mode palette:

* [x] Night Background `#221B22`
* [x] Night Surface `#302633`
* [x] Night Text `#F6EFE8`

---

## 5.2 Atmospheric Gradients

Create reusable gradient tokens.

* [x] Morning Calm
* [x] Evening Reset
* [x] Emotional Clarity
* [x] Grounding Calm

---

## 5.3 Typography

* [x] Heading: Instrument Serif / Lora fallback
* [x] Body: Plus Jakarta Sans / Inter fallback

Type scale:

* [x] Display
* [x] Heading
* [x] Subheading
* [x] Body
* [x] Caption
* [x] Tiny label

---

## 5.4 Typography Rules

* [ ] Avoid aggressive bold typography
* [ ] Avoid uppercase-heavy UI
* [ ] Use breathing spacing
* [ ] Use emotional typography hierarchy
* [ ] Use editorial-style layout rhythm

---

## 5.5 Spacing & Radius

Spacing:

* [x] 4
* [x] 8
* [x] 12
* [x] 16
* [x] 20
* [x] 24
* [x] 32
* [x] 40
* [x] 48

Radius:

* [x] small: 12
* [x] input: 16
* [x] card: 24
* [x] modal: 32
* [x] pill: 999

---

## 5.6 Atmospheric Surface System

* [ ] Tinted surfaces
* [ ] Soft gradient surfaces
* [ ] Blur glow surfaces
* [ ] Floating layered surfaces
* [ ] Cozy dark mode surfaces

Avoid:

* flat white cards
* hard borders
* enterprise dashboard look

---

## 5.7 Ambient Background System

* [ ] Floating glow blobs
* [ ] Soft blur layers
* [ ] Atmospheric gradient depth
* [ ] Subtle grain texture
* [ ] Calm layered lighting

---

## 5.8 Shadows & Elevation

* [x] Soft card shadow
* [x] Floating button shadow
* [x] Subtle glow shadow
* [x] Tinted surface style
* [x] Gradient surface style
* [x] Dark mode surface style

Additional:

* [ ] Atmospheric modal shadow
* [ ] Layered floating depth
* [ ] Warm soft lighting shadow

---

## 5.9 Motion Foundation

### Motion Keywords

* soft
* fluid
* dreamy
* atmospheric
* organic

---

### Required Motion Types

* [ ] Fade transition
* [ ] Soft slide-up
* [ ] Gentle scale
* [ ] Blur transition
* [ ] Floating ambient animation
* [ ] Gradient movement
* [ ] Staggered appearance

---

### Motion Timing

#### Micro Interaction

* [ ] 120–180ms

#### Screen Transition

* [ ] 300–450ms

#### Ambient Motion

* [ ] 6–12 seconds looping softly

---

### Motion Easing

Use:

* [ ] easeOutCubic
* [ ] easeInOutQuart

Avoid:

* bounce
* elastic
* overshoot

---

# 6. Phase 3 — Core UI Components

## 6.1 Buttons

* [x] Primary button
* [x] Secondary button
* [x] Ghost button
* [x] Soft gradient button
* [x] Icon button
* [x] Loading button
* [x] Disabled state

Additional:

* [ ] Atmospheric CTA button
* [ ] Floating FAB variant
* [ ] Soft glow pressed state

---

## 6.2 Inputs

* [x] Text input
* [x] Multiline input
* [x] Time input display
* [x] Search input
* [x] Validation state
* [x] Error helper text

Additional:

* [ ] Soft focus glow
* [ ] Calm active state
* [ ] Emotional placeholder styling

---

## 6.3 Cards

* [x] Routine card
* [x] Daily routine card
* [x] Step card
* [x] Mood card
* [x] Reflection card
* [x] Premium card
* [x] Empty state card

Additional:

* [ ] Atmospheric gradient cards
* [ ] Floating glass-tinted cards
* [ ] Cozy dark mode cards

---

## 6.4 Selectors

* [x] Goal chip
* [x] Category chip
* [x] Mood selector
* [x] Energy selector
* [x] Stress selector
* [x] Day selector
* [x] Theme selector placeholder

Additional:

* [ ] Glow selected state
* [ ] Emotional color transitions

---

## 6.5 Feedback Components

* [x] Loading state
* [x] Empty state
* [x] Error state
* [x] Snackbar / toast
* [x] Success animation
* [x] Pull to refresh

Additional:

* [ ] Atmospheric empty states
* [ ] Emotional micro-feedback
* [ ] Calm loading shimmer

---

# 7. Phase 4 — Mock Data Layer

## 7.1 Create Mock Models

* [x] User mock
* [x] Lifestyle goals mock
* [x] Routine categories mock
* [x] Routines mock
* [x] Routine steps mock
* [x] Daily flow mock
* [x] Mood logs mock
* [x] Weekly reflection mock
* [x] Plans mock
* [x] Reminders mock

---

## 7.2 Mock Repository Pattern

Repositories:

* [x] AuthRepository
* [x] UserRepository
* [x] RoutineRepository
* [x] DailyFlowRepository
* [x] MoodRepository
* [x] ReflectionRepository
* [x] ReminderRepository
* [x] SubscriptionRepository

---

# 8. Phase 5 — Navigation

## 8.1 App Routes

* [x] Splash
* [x] Welcome
* [x] Onboarding Goals
* [x] Onboarding Starter Routine
* [x] Onboarding Reminder
* [x] Main Shell
* [x] Today
* [x] Routines
* [x] Routine Detail
* [x] Routine Builder
* [x] Mood Log
* [x] Reflection
* [x] Reminders
* [x] Subscription
* [x] Profile
* [x] Settings

---

## 8.2 Bottom Navigation

* [x] Today
* [x] Routines
* [x] Reflection
* [x] Profile

Rules:

* maximum 4 tabs
* Today is default tab
* no hamburger menu

---

# 9. Phase 6 — Splash & Welcome

## 9.1 Splash Screen

* [x] Show Aluna symbol
* [x] Soft gradient background
* [x] Gentle fade animation
* [x] Check auth/onboarding mock state
* [x] Navigate to Welcome or Today

Additional:

* [ ] Floating atmospheric gradients
* [ ] Blur glow movement
* [ ] Ambient breathing motion

---

## 9.2 Welcome Screen

* [x] Logo
* [x] Main headline
* [x] Supporting copy
* [x] Primary CTA
* [x] Secondary login CTA

Additional:

* [ ] Editorial typography animation
* [ ] Soft parallax gradients
* [ ] Atmospheric lighting layer

---

# 10. Phase 7 — Onboarding Flow

## 10.1 Goals Screen

* [x] Render lifestyle goal cards
* [x] Select max 3 goals
* [x] Add soft selected state
* [x] Continue button disabled until selected
* [x] Save selected goals locally

Additional:

* [ ] Emotional color feedback
* [ ] Floating ambient background
* [ ] Soft staggered entrance animation

---

## 10.2 Starter Routine Screen

* [x] Show suggested routine templates
* [x] Allow choose one starter routine
* [x] Allow edit starter routine name
* [x] Preview routine steps
* [x] Continue to reminder setup

---

## 10.3 Reminder Setup Screen

* [x] Time picker
* [x] Reminder toggle
* [x] Gentle reminder copy
* [x] Complete onboarding CTA
* [x] Generate mock Daily Flow
* [x] Navigate to Today

---

# 11. Phase 8 — Today Feature

## 11.1 Today Screen Layout

* [x] Atmospheric gradient header
* [x] Greeting
* [x] Date
* [x] Emotional headline
* [x] Progress summary
* [x] Routine timeline
* [x] Mood quick log
* [x] Reflection teaser

Additional:

* [ ] Floating ambient gradients
* [ ] Blur atmospheric layers
* [ ] Breathing whitespace system
* [ ] Emotional typography hierarchy

---

## 11.2 Today Header

* [x] “hari ini pelan-pelan aja”
* [x] “satu langkah kecil juga berarti”
* [x] “semoga harimu terasa lebih ringan”

---

## 11.3 Daily Flow UI

* [x] Render routine cards by time
* [x] Render routine status
* [x] Render step checklist
* [x] Animate complete interaction
* [x] Update progress locally
* [x] Handle empty state

Additional:

* [ ] Soft staggered card animation
* [ ] Floating routine cards
* [ ] Atmospheric progress movement

---

## 11.4 Step Completion

* [x] Tap step to complete
* [x] Tap again to undo
* [x] Skip step action
* [x] Update local state
* [x] Show soft success feedback
* [x] Auto-complete routine if all required steps done

Additional:

* [ ] Soft glow completion
* [ ] Smooth checkbox morph
* [ ] Calm tactile feedback

Avoid:

* confetti
* XP effect
* gaming reward feeling

---

# 12. Phase 9 — Routines Feature

## 12.1 Routine List

* [x] Show active routines
* [x] Show category filter
* [x] Show add routine CTA
* [x] Show empty state
* [x] Show free plan limit warning if 3 routines reached

---

## 12.2 Routine Detail

* [x] Render selected routine
* [x] Display steps
* [x] Execute mode toggle
* [x] Navigate back
* [x] Show schedule days
* [x] Show estimated duration
* [x] Edit routine CTA
* [x] Delete routine action

---

## 12.3 Routine Builder

* [ ] Routine name input
* [ ] Category selector
* [ ] Icon selector placeholder
* [ ] Color selector
* [ ] Start time picker
* [ ] Schedule type selector
* [ ] Schedule days selector
* [ ] Add step
* [ ] Edit step
* [ ] Delete step
* [ ] Reorder steps
* [ ] Save routine
* [ ] Validate max 3 routines locally

---

# 13. Phase 10 — Mood Feature

## 13.1 Mood Quick Log

* [ ] Mood score selector
* [ ] Energy score selector
* [ ] Stress score selector
* [ ] Optional note
* [ ] Save locally
* [ ] Update Today mood card
* [ ] Show success state

Additional:

* [ ] Emotional color transitions
* [ ] Glow selected states
* [ ] Tactile feedback animation

---

# 14. Phase 11 — Reflection Feature

## 14.1 Reflection Screen

* [ ] Latest weekly reflection card
* [ ] Completion percentage
* [ ] Mood average
* [ ] Energy average
* [ ] Stress average
* [ ] Rule-based insight text
* [ ] Empty state
* [ ] Soft chart placeholder

Additional:

* [ ] Atmospheric reflection cards
* [ ] Editorial typography layout
* [ ] Calm gradient backgrounds

---

# 15. Phase 12 — Reminder Feature

## 15.1 Reminder List

* [ ] Show reminders
* [ ] Add reminder
* [ ] Edit reminder
* [ ] Delete reminder
* [ ] Toggle reminder on/off

---

## 15.2 Local Notification

* [ ] Request notification permission
* [ ] Schedule local notification
* [ ] Cancel local notification
* [ ] Reschedule on edit
* [ ] Handle permission denied state

---

# 16. Phase 13 — Profile & Settings

## 16.1 Profile Screen

* [ ] User card
* [ ] Current plan badge
* [ ] Preferences menu
* [ ] Reminder settings
* [ ] Theme placeholder
* [ ] Subscription menu
* [ ] Logout button

---

## 16.2 Preferences Screen

* [ ] Notification toggle
* [ ] Mood tracking toggle
* [ ] Energy tracking toggle
* [ ] Weekly reflection toggle
* [ ] Preferred reminder time

---

# 17. Phase 14 — Subscription UI

## 17.1 Paywall Screen

* [ ] Show free plan benefits
* [ ] Show premium benefits
* [ ] Show monthly price placeholder
* [ ] Show yearly price placeholder
* [ ] Soft upgrade CTA
* [ ] No aggressive copy
* [ ] No fake countdown
* [ ] No hard onboarding paywall

Additional:

* [ ] Soft luxury atmosphere
* [ ] Emotional upgrade messaging
* [ ] Calm premium gradients

---

# 18. Phase 15 — Local Storage

## 18.1 Hive Setup

* [ ] Initialize Hive
* [ ] Create boxes
* [ ] Store onboarding state
* [ ] Store routines
* [ ] Store daily flow
* [ ] Store mood logs
* [ ] Store reminders
* [ ] Store preferences

---

# 19. Phase 16 — API Integration Foundation

## 19.1 API Client

* [ ] Setup Dio client
* [ ] Setup base URL env
* [ ] Setup auth token interceptor
* [ ] Setup error mapper
* [ ] Setup timeout

---

## 19.2 Repository Switch

* [ ] Replace mock repositories with API repositories

---

# 20. Phase 17 — Auth Integration

* [ ] Login screen
* [ ] Register screen
* [ ] Google login placeholder
* [ ] Session persistence
* [ ] Backend auth sync

---

# 21. Phase 18 — Emotional Atmosphere Polish

## Today Screen Atmosphere

* [ ] Floating ambient gradients
* [ ] Atmospheric blur background
* [ ] Emotional typography hierarchy
* [ ] Soft stagger animation
* [ ] Breathing whitespace

Goal:

Today screen should feel emotionally comforting in under 3 seconds.

---

## Onboarding Atmosphere

* [x] Fullscreen gradients
* [x] Slow blur movement
* [x] Editorial typography motion
* [x] Soft parallax movement

---

## Mood Logging Atmosphere

* [ ] Emotional color transitions
* [ ] Glow selected states
* [ ] Tactile soft interactions

---

## Dark Mode Atmosphere

* [ ] Cozy dark gradients
* [ ] Warm night lighting
* [ ] Calm evening feeling

---

# 22. Phase 19 — Testing

## 22.1 Manual Testing

* [ ] Fresh install
* [ ] Complete onboarding
* [ ] Create routine
* [ ] Edit routine
* [ ] Delete routine
* [ ] Complete daily step
* [ ] Log mood
* [ ] View reflection
* [ ] Restart app persistence

---

## 22.2 UI Testing Checklist

* [ ] Today screen not cluttered
* [ ] Colors feel calm but alive
* [ ] Typography readable
* [ ] Buttons obvious
* [ ] No dashboard SaaS feeling
* [ ] No aggressive productivity copy
* [ ] No childish visual style

---

# 23. Phase 20 — Pre-Launch Assets

* [ ] App icon
* [ ] Splash logo
* [x] Onboarding logo
* [ ] App Store screenshots
* [ ] TikTok carousel screenshots
* [ ] Landing page screenshots

---

# 24. Frontend MVP Done Criteria

* [ ] app bisa dibuka tanpa backend
* [ ] onboarding selesai dengan mock data
* [ ] Today screen terasa polished
* [ ] routine CRUD berjalan lokal
* [ ] step completion smooth
* [ ] mood logging usable
* [ ] reflection screen calming
* [ ] local persistence berjalan
* [ ] app terasa emotionally comforting
* [ ] UI layak untuk TikTok content

---

# 25. Hard Rule

Jangan bikin Aluna terasa seperti:

* productivity dashboard
* fintech app
* habit tracker generik
* startup SaaS template

Aluna harus terasa seperti:

> calming digital space yang membantu hidup terasa sedikit lebih ringan.
