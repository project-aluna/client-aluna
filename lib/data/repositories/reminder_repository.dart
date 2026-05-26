import '../models/reminder_model.dart';
import '../mock/mock_reminders.dart';

abstract class ReminderRepository {
  Future<List<ReminderModel>> getReminders();
  Future<ReminderModel> updateReminder(String reminderId, {String? time, bool? isEnabled, String? label});
}

class MockReminderRepository implements ReminderRepository {
  @override
  Future<List<ReminderModel>> getReminders() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockReminders.reminders;
  }

  @override
  Future<ReminderModel> updateReminder(String reminderId, {String? time, bool? isEnabled, String? label}) async {
    await Future.delayed(const Duration(seconds: 1));
    final existing = MockReminders.reminders.firstWhere((r) => r.id == reminderId);
    return existing.copyWith(
      time: time ?? existing.time,
      isEnabled: isEnabled ?? existing.isEnabled,
      label: label ?? existing.label,
    );
  }
}
