import '../models/routine_category_model.dart';

class MockRoutineCategories {
  static final List<RoutineCategoryModel> categories = [
    const RoutineCategoryModel(
      id: 'cat_001',
      name: 'Morning',
      slug: 'morning',
      icon: 'sunrise',
      color: '#F3B58A',
    ),
    const RoutineCategoryModel(
      id: 'cat_002',
      name: 'Night',
      slug: 'night',
      icon: 'moon',
      color: '#C9BFD8',
    ),
    const RoutineCategoryModel(
      id: 'cat_003',
      name: 'Self-care',
      slug: 'self-care',
      icon: 'heart',
      color: '#D98F8F',
    ),
    const RoutineCategoryModel(
      id: 'cat_004',
      name: 'Fitness',
      slug: 'fitness',
      icon: 'dumbbell',
      color: '#9DB8A5',
    ),
  ];
}
