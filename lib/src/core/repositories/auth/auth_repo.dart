import '../../entities/user/user.dart';

abstract class IAuthRepo {
  Future<User?> getCurrentUser();
}
