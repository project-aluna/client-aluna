
import 'package:go_router/go_router.dart';
import 'route_names.dart';

import '../../features/onboarding/presentation/welcome_screen.dart';
import '../../features/onboarding/presentation/goals_screen.dart';
// onboarding routines screen is imported with a prefix or alias, or just not imported here if we use alias for the main one. Let's use an alias for onboarding routines.
import '../../features/onboarding/presentation/routines_screen.dart' as onboarding_routines;
import '../../features/onboarding/presentation/reminder_screen.dart';
import '../../features/onboarding/presentation/generate_flow_screen.dart';

// Shell and Tabs
import '../../features/shell/presentation/main_shell_screen.dart';
import '../../features/today/presentation/today_screen.dart';
import '../../features/routines/presentation/routines_screen.dart';
import '../../features/reflection/presentation/reflection_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';

// Details & Builders
import '../../features/routines/presentation/routine_detail_screen.dart';
import '../../features/routines/presentation/routine_builder_screen.dart';
import '../../features/mood/presentation/mood_log_screen.dart';
import '../../features/reminders/presentation/reminders_screen.dart';
import '../../features/subscription/presentation/subscription_screen.dart';
import '../../features/profile/presentation/settings_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRouteNames.welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/onboarding/goals',
      name: AppRouteNames.onboardingGoals,
      builder: (context, state) => const GoalsScreen(),
    ),
    GoRoute(
      path: '/onboarding/routines',
      name: AppRouteNames.onboardingRoutines,
      builder: (context, state) => const onboarding_routines.RoutinesScreen(),
    ),
    GoRoute(
      path: '/onboarding/reminder',
      name: AppRouteNames.onboardingReminder,
      builder: (context, state) => const ReminderScreen(),
    ),
    GoRoute(
      path: '/onboarding/generate',
      name: AppRouteNames.onboardingGenerate,
      builder: (context, state) => const GenerateFlowScreen(),
    ),
    
    // Main Shell Navigation
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainShellScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/today',
              name: AppRouteNames.today,
              builder: (context, state) => const TodayScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/routines-tab',
              name: AppRouteNames.routines,
              builder: (context, state) => const RoutinesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/reflection',
              name: AppRouteNames.reflection,
              builder: (context, state) => const ReflectionScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              name: AppRouteNames.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),

    // Top-level routes (outside the bottom navigation shell)
    GoRoute(
      path: '/routine-detail',
      name: AppRouteNames.routineDetail,
      builder: (context, state) => const RoutineDetailScreen(),
    ),
    GoRoute(
      path: '/routine-builder',
      name: AppRouteNames.routineBuilder,
      builder: (context, state) => const RoutineBuilderScreen(),
    ),
    GoRoute(
      path: '/mood-log',
      name: AppRouteNames.moodLog,
      builder: (context, state) => const MoodLogScreen(),
    ),
    GoRoute(
      path: '/reminders',
      name: AppRouteNames.reminders,
      builder: (context, state) => const RemindersScreen(),
    ),
    GoRoute(
      path: '/subscription',
      name: AppRouteNames.subscription,
      builder: (context, state) => const SubscriptionScreen(),
    ),
    GoRoute(
      path: '/settings',
      name: AppRouteNames.settings,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
