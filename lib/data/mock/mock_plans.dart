import '../models/plan_model.dart';

class MockPlans {
  static final List<PlanModel> plans = [
    const PlanModel(
      id: 'plan_free',
      name: 'Free',
      price: 0,
      features: [
        '3 rutinitas aktif',
        'Mood log harian',
        'Weekly reflection',
      ],
      isCurrent: true,
    ),
    const PlanModel(
      id: 'plan_premium',
      name: 'Premium',
      price: 49000,
      features: [
        'Rutinitas tidak terbatas',
        'Mood log harian',
        'Weekly reflection mendalam',
        'Statistik lengkap',
        'Tema premium',
        'Tanpa iklan',
      ],
      isCurrent: false,
    ),
  ];
}
