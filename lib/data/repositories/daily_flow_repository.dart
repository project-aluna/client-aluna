import '../models/daily_flow_model.dart';
import '../mock/mock_daily_flow.dart';

abstract class DailyFlowRepository {
  Future<DailyFlowModel> getTodayFlow();
  Future<FlowStepModel> completeStep(String flowStepId);
}

class MockDailyFlowRepository implements DailyFlowRepository {
  @override
  Future<DailyFlowModel> getTodayFlow() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockDailyFlow.todayFlow;
  }

  @override
  Future<FlowStepModel> completeStep(String flowStepId) async {
    await Future.delayed(const Duration(seconds: 1));
    return FlowStepModel(
      id: flowStepId,
      stepId: flowStepId,
      title: 'Completed Step',
      isCompleted: true,
      completedAt: DateTime.now().toIso8601String(),
    );
  }
}
