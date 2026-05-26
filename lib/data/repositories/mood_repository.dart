import '../models/mood_log_model.dart';
import '../mock/mock_mood_logs.dart';

abstract class MoodRepository {
  Future<List<MoodLogModel>> getMoodLogs();
  Future<MoodLogModel> createMoodLog({
    required int moodScore,
    int? energyLevel,
    int? stressLevel,
    String? note,
  });
}

class MockMoodRepository implements MoodRepository {
  @override
  Future<List<MoodLogModel>> getMoodLogs() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockMoodLogs.logs;
  }

  @override
  Future<MoodLogModel> createMoodLog({
    required int moodScore,
    int? energyLevel,
    int? stressLevel,
    String? note,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return MoodLogModel(
      id: 'mood_new_${DateTime.now().millisecondsSinceEpoch}',
      moodScore: moodScore,
      energyLevel: energyLevel,
      stressLevel: stressLevel,
      note: note,
      loggedAt: DateTime.now().toIso8601String(),
    );
  }
}
