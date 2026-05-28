import '../models/daily_flow_model.dart';

class MockDailyFlow {
  static final DailyFlowModel todayFlow = DailyFlowModel(
    id: 'flow_001',
    date: DateTime.now().toIso8601String().split('T').first,
    routineFlows: const [
      RoutineFlowModel(
        id: 'rf_001',
        routineId: 'routine_001',
        routineName: 'Soft Morning',
        startTime: '06:00',
        isCompleted: false,
        steps: [
          FlowStepModel(id: 'fs_001', stepId: 'step_001', title: 'Minum air hangat', isCompleted: true, completedAt: '2026-05-26T06:05:00.000Z'),
          FlowStepModel(id: 'fs_002', stepId: 'step_002', title: 'Peregangan ringan', isCompleted: true, completedAt: '2026-05-26T06:12:00.000Z'),
          FlowStepModel(id: 'fs_003', stepId: 'step_003', title: 'Journaling 3 menit', isCompleted: false),
        ],
      ),
      RoutineFlowModel(
        id: 'rf_002',
        routineId: 'routine_002',
        routineName: 'Night Reset',
        startTime: '21:30',
        isCompleted: false,
        steps: [
          FlowStepModel(id: 'fs_004', stepId: 'step_004', title: 'Matikan layar', isCompleted: false),
          FlowStepModel(id: 'fs_005', stepId: 'step_005', title: 'Cuci muka', isCompleted: false),
          FlowStepModel(id: 'fs_006', stepId: 'step_006', title: 'Baca buku 10 menit', isCompleted: false),
          FlowStepModel(id: 'fs_007', stepId: 'step_007', title: 'Atur alarm', isCompleted: false),
        ],
      ),
    ],
  );
}
