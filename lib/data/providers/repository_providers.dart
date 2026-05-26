import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';
import '../repositories/routine_repository.dart';
import '../repositories/daily_flow_repository.dart';
import '../repositories/mood_repository.dart';
import '../repositories/reflection_repository.dart';
import '../repositories/reminder_repository.dart';
import '../repositories/subscription_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return MockAuthRepository();
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return MockUserRepository();
});

final routineRepositoryProvider = Provider<RoutineRepository>((ref) {
  return MockRoutineRepository();
});

final dailyFlowRepositoryProvider = Provider<DailyFlowRepository>((ref) {
  return MockDailyFlowRepository();
});

final moodRepositoryProvider = Provider<MoodRepository>((ref) {
  return MockMoodRepository();
});

final reflectionRepositoryProvider = Provider<ReflectionRepository>((ref) {
  return MockReflectionRepository();
});

final reminderRepositoryProvider = Provider<ReminderRepository>((ref) {
  return MockReminderRepository();
});

final subscriptionRepositoryProvider = Provider<SubscriptionRepository>((ref) {
  return MockSubscriptionRepository();
});
