import '../models/weekly_reflection_model.dart';
import '../mock/mock_reflections.dart';

abstract class ReflectionRepository {
  Future<WeeklyReflectionModel?> getWeeklyReflection();
}

class MockReflectionRepository implements ReflectionRepository {
  @override
  Future<WeeklyReflectionModel?> getWeeklyReflection() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockReflections.reflections.isNotEmpty
        ? MockReflections.reflections.first
        : null;
  }
}
