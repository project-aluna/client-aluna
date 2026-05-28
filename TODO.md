# TODO.md — Aluna Frontend

Version: 1.0  
Repo: aluna-frontend  
Platform: Flutter Mobile App  
Backend: Separate Repository  
Status: Frontend Execution Plan

---

# 1. Frontend Goal

Frontend Aluna harus memvalidasi pengalaman utama:

> user membuka app, merasa tenang, melihat Daily Flow, menyelesaikan routine kecil, log mood, dan merasa hidup sedikit lebih manageable.

Fokus awal frontend:

- visual polish
- onboarding flow
- Today screen
- routine builder
- mood logging
- weekly reflection UI
- local mock data dulu
- API integration belakangan

---

# 2. Frontend Principles

- mobile-first
- UI harus terasa calming dan colorful
- jangan terlihat seperti dashboard kerja
- core screen harus screenshot-worthy
- build pakai mock data dulu
- pisahkan UI, state, repository, dan API client
- jangan tunggu backend selesai untuk bikin pengalaman frontend
- backend integration masuk setelah core UX terasa enak

---

# 3. Phase 0 — Project Setup

## 3.1 Initialize Flutter Project

- [x] Create frontend repo
- [x] Init Flutter project
- [x] Set app name: Aluna
- [x] Set bundle id / package name
- [x] Setup Android config
- [x] Setup iOS config
- [x] Setup minimum SDK
- [x] Setup app launcher icon placeholder
- [x] Setup splash screen placeholder

---

## 3.2 Project Dependencies

Install:

- [x] flutter_riverpod
- [x] go_router
- [x] dio
- [x] hive
- [x] hive_flutter
- [x] flutter_local_notifications
- [x] intl
- [x] freezed_annotation
- [x] json_annotation
- [x] phosphor_flutter / lucide_icons
- [x] google_fonts
- [x] smooth_page_indicator
- [x] flutter_svg
- [x] shared_preferences

Dev dependencies:

- [x] build_runner
- [x] freezed
- [x] json_serializable
- [x] flutter_lints
- [x] hive_generator

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

  core/
    api/
      api_client.dart
      api_endpoints.dart
      api_interceptor.dart
      api_error_mapper.dart
    storage/
      local_storage_service.dart
      cache_keys.dart
    errors/
      app_exception.dart
      failure.dart
    utils/
      date_utils.dart
      validators.dart
      formatters.dart
    widgets/
      app_button.dart
      app_text_field.dart
      app_bottom_sheet.dart
      app_empty_state.dart
      app_loading.dart
      app_error_view.dart

  data/
    mock/
      mock_daily_flow.dart
      mock_routines.dart
      mock_mood_logs.dart
      mock_reflections.dart
    models/
      user_model.dart
      routine_model.dart
      routine_step_model.dart
      daily_flow_model.dart
      mood_log_model.dart
      weekly_reflection_model.dart
      reminder_model.dart
      plan_model.dart

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
````

---

# 5. Phase 2 — Design System Implementation

## 5.1 Color Tokens

Create tokens from revamped `design.md`.

Primary colors:

* [x] Rose Clay `#D98F8F`
* [x] Peach Glow `#F3B58A`
* [x] Butter Cream `#FFF4E6`
* [x] Lavender Mist `#B7A6E6`
* [x] Sage Breeze `#9DB8A5`
* [x] Sky Powder `#BFD7EA`
* [x] Cocoa Ink `#3C2F2F`

Dark mode colors:

* [x] Night Background `#241C24`
* [x] Night Surface `#32263A`
* [x] Night Text `#F7EDE2`

---

## 5.2 Gradient Tokens

Create reusable gradients:

* [x] Morning Glow: `#FFF4E6 → #F3B58A`
* [x] Calm Evening: `#B7A6E6 → #D98F8F`
* [x] Sky Calm: `#BFD7EA → #FFF4E6`
* [x] Soft Wellness: `#9DB8A5 → #FFF4E6`

---

## 5.3 Typography

Use:

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

## 5.4 Spacing & Radius

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

## 5.5 Shadows & Surfaces

* [x] Soft card shadow
* [x] Floating button shadow
* [x] Subtle glow shadow
* [x] Tinted surface style
* [x] Gradient surface style
* [x] Dark mode surface style

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

---

## 6.2 Inputs

* [x] Text input
* [x] Multiline input
* [x] Time input display
* [x] Search input
* [x] Validation state
* [x] Error helper text

---

## 6.3 Cards

* [x] Routine card
* [x] Daily routine card
* [x] Step card
* [x] Mood card
* [x] Reflection card
* [x] Premium card
* [x] Empty state card

---

## 6.4 Selectors

* [x] Goal chip
* [x] Category chip
* [x] Mood selector
* [x] Energy selector
* [x] Stress selector
* [x] Day selector
* [x] Theme selector placeholder

---

## 6.5 Feedback Components

* [x] Loading state
* [x] Empty state
* [x] Error state
* [x] Snackbar / toast
* [x] Success animation
* [x] Pull to refresh

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

Create repositories with switchable data source:

```txt
Mock Repository → API Repository later
```

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

Tabs:

* [x] Today
* [x] Routines
* [x] Reflection
* [x] Profile

Rules:

* maximum 4 tabs
* Today is default tab
* no hamburger menu for core navigation

---

# 9. Phase 6 — Splash & Welcome

## 9.1 Splash Screen

* [x] Show Aluna symbol
* [x] Soft gradient background
* [x] Gentle fade animation
* [x] Check auth/onboarding mock state
* [x] Navigate to Welcome or Today

---

## 9.2 Welcome Screen

Content:

* [x] Logo
* [x] Main headline
* [x] Supporting copy
* [x] Primary CTA
* [x] Secondary login CTA

Suggested headline:

> A softer way to get your life together.

Suggested subcopy:

> Bangun rutinitas kecil yang membantu hari terasa lebih tenang dan terurus.

---

# 10. Phase 7 — Onboarding Flow

## 10.1 Goals Screen

* [x] Render lifestyle goal cards
* [x] Select max 3 goals
* [x] Add soft selected state
* [x] Continue button disabled until selected
* [x] Save selected goals locally

---

## 10.2 Starter Routine Screen

* [x] Show suggested routine templates
* [x] Allow choose one starter routine
* [x] Allow edit starter routine name
* [x] Preview routine steps
* [x] Continue to reminder setup

Starter templates:

* [x] Soft Morning
* [x] Night Reset
* [x] Skincare Routine
* [x] Sunday Reset

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

Must include:

* [x] Atmospheric gradient header
* [x] Greeting
* [x] Date
* [x] Emotional headline
* [x] Progress summary
* [x] Routine timeline
* [x] Mood quick log
* [x] Reflection teaser

---

## 11.2 Today Header

Examples:

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

---

## 11.4 Step Completion

* [x] Tap step to complete
* [x] Tap again to undo
* [x] Skip step action
* [x] Update local state
* [x] Show soft success feedback
* [x] Auto-complete routine if all required steps done

---

# 12. Phase 9 — Routines Feature

## 12.1 Routine List

* [ ] Show active routines
* [ ] Show category filter
* [ ] Show add routine CTA
* [ ] Show empty state
* [ ] Show free plan limit warning if 3 routines reached
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
* [x] Show steps
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
* [ ] Validate max 3 routines for free plan locally

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

---

## 13.2 Mood UX Rules

* mood logging should take under 15 seconds
* notes must be optional
* do not force journaling
* copy must feel non-judgmental

---

# 14. Phase 11 — Reflection Feature

## 14.1 Reflection Screen

* [ ] Latest weekly reflection card
* [ ] Completion percentage
* [ ] Mood average
* [ ] Energy average
* [ ] Stress average
* [ ] Rule-based insight text
* [ ] Empty state if not enough data
* [ ] Soft chart placeholder

---

## 14.2 Reflection Copy Examples

* [ ] “Minggu ini kamu lebih sering menyelesaikan rutinitas malam.”
* [ ] “Langkah kecil yang kamu ulangi tetap berarti.”
* [ ] “Rutinitas malam terlihat membantu harimu terasa lebih stabil.”

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

---

## 17.2 Premium Benefits

* [ ] Unlimited routines
* [ ] Advanced reflections
* [ ] Premium themes
* [ ] Widgets
* [ ] Deeper emotional insights

---

# 18. Phase 15 — Local Storage

## 18.1 Hive Setup

* [ ] Initialize Hive
* [ ] Create boxes
* [ ] Store onboarding state
* [ ] Store mock user
* [ ] Store routines
* [ ] Store daily flow
* [ ] Store mood logs
* [ ] Store reminders
* [ ] Store preferences

---

## 18.2 Persistence Rules

* [ ] App restart keeps onboarding state
* [ ] App restart keeps created routines
* [ ] App restart keeps completed steps for today
* [ ] App restart keeps mood log
* [ ] App restart keeps reminder settings

---

# 19. Phase 16 — API Integration Foundation

Do this after mock frontend feels good.

## 19.1 API Client

* [ ] Setup Dio client
* [ ] Setup base URL env
* [ ] Setup auth token interceptor
* [ ] Setup error mapper
* [ ] Setup timeout
* [ ] Setup retry strategy only if needed

---

## 19.2 Repository Switch

* [ ] Replace mock auth repository with API repository
* [ ] Replace mock routine repository with API repository
* [ ] Replace mock daily flow repository with API repository
* [ ] Replace mock mood repository with API repository
* [ ] Replace mock reflection repository with API repository
* [ ] Replace mock reminder repository with API repository

---

# 20. Phase 17 — Auth Integration Later

## 20.1 Auth Screens

* [ ] Login screen
* [ ] Register screen
* [ ] Forgot password placeholder
* [ ] Google login placeholder
* [ ] Session persistence

---

## 20.2 Backend Auth Sync

* [ ] Call POST /auth/sync after login
* [ ] Store access token securely
* [ ] Fetch GET /me
* [ ] Redirect based on onboarding_completed

---

# 21. Phase 18 — Polish

## 21.1 Visual Polish

* [ ] Add subtle gradient backgrounds
* [ ] Add soft card shadows
* [ ] Add atmospheric blur shapes
* [ ] Add motion to onboarding
* [ ] Add motion to routine completion
* [ ] Add empty state illustrations
* [ ] Add dark mode foundation

---

## 21.2 UX Polish

* [ ] Reduce taps in routine builder
* [ ] Make Today screen readable in 5 seconds
* [ ] Make mood log under 15 seconds
* [ ] Make onboarding under 90 seconds
* [ ] Make routine completion satisfying
* [ ] Improve copywriting on all empty states

---

# 22. Phase 19 — Testing

## 22.1 Manual Testing

* [ ] Fresh install
* [ ] Complete onboarding
* [ ] Create routine
* [ ] Edit routine
* [ ] Delete routine
* [ ] Add step
* [ ] Reorder steps
* [ ] Complete daily step
* [ ] Undo daily step
* [ ] Log mood
* [ ] View reflection
* [ ] Create reminder
* [ ] Restart app and verify data persists

---

## 22.2 UI Testing Checklist

* [ ] Today screen not cluttered
* [ ] Colors feel calm but alive
* [ ] Typography readable
* [ ] Buttons obvious
* [ ] Empty states helpful
* [ ] No dashboard SaaS feeling
* [ ] No aggressive productivity copy
* [ ] No childish visual style

---

# 23. Phase 20 — Pre-Launch Assets

## 23.1 App Assets

* [ ] App icon
* [ ] Splash logo
* [ ] Onboarding logo
* [ ] Empty state visuals
* [ ] App Store screenshots
* [ ] TikTok carousel screenshots
* [ ] Landing page screenshots

---

# 24. Build Order Recommendation

Build frontend in this order:

1. Flutter project setup
2. Design tokens
3. Core components
4. Mock data
5. Navigation
6. Splash + welcome
7. Onboarding
8. Today screen
9. Step completion local state
10. Routine list
11. Routine builder
12. Mood log
13. Reflection screen
14. Reminder UI
15. Local notifications
16. Profile/settings
17. Subscription UI
18. Local persistence
19. API integration
20. Polish
21. Launch screenshots

---

# 25. Frontend MVP Done Criteria

Frontend MVP selesai jika:

* [ ] app bisa dibuka tanpa backend
* [ ] onboarding bisa selesai dengan mock data
* [ ] Today screen terlihat polished
* [ ] user bisa membuat routine secara lokal
* [ ] user bisa menambah step routine
* [ ] user bisa melihat daily flow
* [ ] user bisa complete step
* [ ] progress berubah otomatis
* [ ] user bisa log mood
* [ ] user bisa melihat weekly reflection mock
* [ ] user bisa membuat reminder lokal
* [ ] data tetap ada setelah app restart
* [ ] app terasa calming dan tidak seperti dashboard kerja
* [ ] screenshot UI layak untuk konten TikTok

---

# 26. Hard Rule

Jangan tunggu backend untuk bikin frontend terasa hidup.

Untuk Aluna, visual dan emotional experience adalah value utama.

Backend penting, tapi frontend menentukan apakah audience merasa:

> “ini app gue banget.”

Core frontend harus menang dulu di rasa.

```