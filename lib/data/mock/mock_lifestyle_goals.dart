import '../models/lifestyle_goal_model.dart';

class MockLifestyleGoals {
  static final List<LifestyleGoalModel> goals = [
    const LifestyleGoalModel(
      id: 'goal_001',
      name: 'Tidur lebih teratur',
      slug: 'better-sleep',
      description: 'Bantu malam terasa lebih tenang',
      icon: 'assets/icons/moon.png',
    ),
    const LifestyleGoalModel(
      id: 'goal_002',
      name: 'Kurangi stres',
      slug: 'reduce-stress',
      description: 'Temukan ketenangan di hari sibuk',
      icon: 'assets/icons/selfcare.png',
    ),
    const LifestyleGoalModel(
      id: 'goal_003',
      name: 'Mindfulness',
      slug: 'mindfulness',
      description: 'Hadir di setiap momen',
      icon: 'assets/icons/mindfullnes.png',
    ),
    const LifestyleGoalModel(
      id: 'goal_004',
      name: 'Lebih aktif bergerak',
      slug: 'fitness',
      description: 'Gerakkan tubuh dengan lembut',
      icon: 'assets/icons/gym.png',
    ),
    const LifestyleGoalModel(
      id: 'goal_005',
      name: 'Produktivitas',
      slug: 'productivity',
      description: 'Atur hari tanpa overwhelm',
      icon: 'assets/icons/workspace.png',
    ),
    const LifestyleGoalModel(
      id: 'goal_006',
      name: 'Skincare rutin',
      slug: 'skincare',
      description: 'Rawat diri dengan konsisten',
      icon: 'assets/icons/skincare.png',
    ),
  ];
}
