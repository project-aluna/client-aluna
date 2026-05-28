import '../models/weekly_reflection_model.dart';

class MockReflections {
  static final List<WeeklyReflectionModel> reflections = [
    const WeeklyReflectionModel(
      id: 'ref_001',
      weekStart: '2026-05-20',
      weekEnd: '2026-05-26',
      insightText: 'Minggu ini kamu lebih konsisten melakukan meditasi pagi. Pertahankan langkah kecilmu!',
      completionPercent: 85,
      averageMood: 4.2,
    ),
  ];
}
