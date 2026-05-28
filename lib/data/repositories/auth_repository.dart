import '../models/user_model.dart';
import '../mock/mock_users.dart';

abstract class AuthRepository {
  Future<UserModel> syncUser({
    required String authProvider,
    required String authProviderId,
    required String email,
    required String name,
    String? avatarUrl,
  });

  Future<bool> isLoggedIn();
}

class MockAuthRepository implements AuthRepository {
  @override
  Future<UserModel> syncUser({
    required String authProvider,
    required String authProviderId,
    required String email,
    required String name,
    String? avatarUrl,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return MockUsers.currentUser;
  }

  @override
  Future<bool> isLoggedIn() async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
