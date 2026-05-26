import '../models/plan_model.dart';
import '../mock/mock_plans.dart';

abstract class SubscriptionRepository {
  Future<List<PlanModel>> getPlans();
  Future<PlanModel> getCurrentPlan();
}

class MockSubscriptionRepository implements SubscriptionRepository {
  @override
  Future<List<PlanModel>> getPlans() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockPlans.plans;
  }

  @override
  Future<PlanModel> getCurrentPlan() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockPlans.plans.firstWhere((p) => p.isCurrent);
  }
}
