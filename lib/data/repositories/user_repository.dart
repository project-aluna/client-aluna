import '../models/user_model.dart';
import '../mock/mock_users.dart';

abstract class UserRepository {
  Future<UserModel> getCurrentUser();
  Future<UserModel> updateUser({String? name, String? timezone, int? birthYear});
}

class MockUserRepository implements UserRepository {
  @override
  Future<UserModel> getCurrentUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return MockUsers.currentUser;
  }

  @override
  Future<UserModel> updateUser({String? name, String? timezone, int? birthYear}) async {
    await Future.delayed(const Duration(seconds: 1));
    return MockUsers.currentUser.copyWith(
      name: name ?? MockUsers.currentUser.name,
      timezone: timezone ?? MockUsers.currentUser.timezone,
    );
  }
}
