import '../models/reminder_model.dart';

class MockReminders {
  static final List<ReminderModel> reminders = [
    const ReminderModel(
      id: 'rem_001',
      time: '06:00',
      isEnabled: true,
      label: 'Rutinitas Pagi',
    ),
    const ReminderModel(
      id: 'rem_002',
      time: '21:00',
      isEnabled: true,
      label: 'Rutinitas Malam',
    ),
  ];
}
