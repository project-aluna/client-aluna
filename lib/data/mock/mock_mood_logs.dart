import '../models/mood_log_model.dart';

class MockMoodLogs {
  static final List<MoodLogModel> logs = [
    const MoodLogModel(
      id: 'mood_001',
      moodScore: 4,
      energyLevel: 4,
      stressLevel: 2,
      note: 'Hari ini terasa damai, meditasi pagi membantu.',
      loggedAt: '2026-05-26T21:00:00.000Z',
    ),
    const MoodLogModel(
      id: 'mood_002',
      moodScore: 3,
      energyLevel: 3,
      stressLevel: 3,
      note: 'Biasa saja, sedikit lelah di sore hari.',
      loggedAt: '2026-05-25T21:00:00.000Z',
    ),
    const MoodLogModel(
      id: 'mood_003',
      moodScore: 5,
      energyLevel: 5,
      stressLevel: 1,
      note: 'Luar biasa! Weekend yang produktif.',
      loggedAt: '2026-05-24T21:00:00.000Z',
    ),
    const MoodLogModel(
      id: 'mood_004',
      moodScore: 2,
      energyLevel: 2,
      stressLevel: 4,
      note: 'Hari yang berat, banyak deadline.',
      loggedAt: '2026-05-23T21:00:00.000Z',
    ),
    const MoodLogModel(
      id: 'mood_005',
      moodScore: 4,
      energyLevel: 3,
      stressLevel: 2,
      loggedAt: '2026-05-22T21:00:00.000Z',
    ),
  ];
}
