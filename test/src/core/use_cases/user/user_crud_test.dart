import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/repositories/user/user_repo.dart';
import 'package:my_community/src/core/use_cases/user/user_crud.dart';

import '../use_case_test_utils.dart';

@GenerateNiceMocks([
  MockSpec<IUserRepo>(),
])
import 'user_crud_test.mocks.dart';

late IUserRepo userRepo;
late UserCrud sut;
void setupSut() {
  userRepo = MockIUserRepo();
  sut = UserCrud(repo: userRepo);
}

void main() {
  group('User isUser', () {
    test('should call repo.isUser', () {});

    test('should return true if is a user', () {});
    test('should return false if not a user', () {});
  });
  group('User create', () {
    setUp(() => setupSut());
    test('should call repo.isUser', () {
      sut.createUser(
        phone: aUserPhone,
        name: aUserName,
        token: "",
      );
      verify(userRepo.isUser(aUserPhone)).called(1);
    });

    test('should throw InvalidTokenException when token is invalid', () {});
    test('should not call repo.createUser when token is invalid', () {});

    test('should create a user if is not already a user', () {});
    test('should not create a user if is already a user', () {});
  });

  group('User update', () {
    group('with auth', () {
      group('with the user', () {
        test('should update the user name', () {});
        test('should update the user profileImageUrl', () {});
      });

      group('without the user', () {
        test('should throw UserNotPermitError', () {});
      });
    });

    group('without auth', () {
      test('shoud thorw UserNotFoundError', () {});
    });
  });
}
