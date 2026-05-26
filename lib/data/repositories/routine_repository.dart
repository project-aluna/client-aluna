import '../models/routine_model.dart';
import '../mock/mock_routines.dart';

abstract class RoutineRepository {
  Future<List<RoutineModel>> getRoutines();
  Future<RoutineModel> getRoutineDetail(String routineId);
  Future<RoutineModel> createRoutine(RoutineModel routine);
  Future<RoutineModel> updateRoutine(String routineId, RoutineModel routine);
  Future<void> deleteRoutine(String routineId);
}

class MockRoutineRepository implements RoutineRepository {
  @override
  Future<List<RoutineModel>> getRoutines() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockRoutines.routines;
  }

  @override
  Future<RoutineModel> getRoutineDetail(String routineId) async {
    await Future.delayed(const Duration(seconds: 1));
    return MockRoutines.routines.firstWhere((r) => r.id == routineId);
  }

  @override
  Future<RoutineModel> createRoutine(RoutineModel routine) async {
    await Future.delayed(const Duration(seconds: 1));
    return routine;
  }

  @override
  Future<RoutineModel> updateRoutine(String routineId, RoutineModel routine) async {
    await Future.delayed(const Duration(seconds: 1));
    return routine;
  }

  @override
  Future<void> deleteRoutine(String routineId) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
