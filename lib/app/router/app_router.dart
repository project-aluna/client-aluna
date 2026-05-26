import 'package:go_router/go_router.dart';
import 'route_names.dart';

import '../../features/splash/presentation/splash_screen.dart';
import '../../features/onboarding/presentation/welcome_screen.dart';
import '../../features/onboarding/presentation/goals_screen.dart';
import '../../features/onboarding/presentation/routines_screen.dart';
import '../../features/onboarding/presentation/reminder_screen.dart';
import '../../features/onboarding/presentation/generate_flow_screen.dart';
import '../../features/today/presentation/today_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRouteNames.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/welcome',
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
      builder: (context, state) => const RoutinesScreen(),
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
    GoRoute(
      path: '/today',
      name: AppRouteNames.today,
      builder: (context, state) => const TodayScreen(),
    ),
  ],
);

