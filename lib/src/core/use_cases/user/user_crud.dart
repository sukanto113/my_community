import 'package:my_community/src/core/repositories/user/user_repo.dart';

class UserCrud {
  UserCrud({required this.repo});

  final IUserRepo repo;

  void createUser({
    required String phone,
    required String name,
    required String token,
  }) {
    repo.isUser(phone);
  }
}
