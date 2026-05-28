import '../models/user_model.dart';

class MockUsers {
  static final UserModel currentUser = UserModel(
    id: 'user_001',
    name: 'Aluna User',
    email: 'user@aluna.app',
    avatarUrl: null,
    timezone: 'Asia/Jakarta',
    onboardingCompleted: false,
    createdAt: '2026-05-24T10:00:00.000Z',
  );
}
