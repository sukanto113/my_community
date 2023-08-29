import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_community/src/core/repositories/auth/auth_repo.dart';
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart';
import 'package:my_community/src/core/use_cases/member/member_crud.dart';

import '../use_case_test_utils.dart';
import '../use_case_test_utils.mocks.dart';

final aMemberName = facker.person.name();
final aMemberPhone = facker.phoneNumber.us();

late MemberCrud sut;

void setupSut() {
  authRepo = MockIAuthRepo();
  memberRepo = MockIMemberRepo();
  sut = MemberCrud(
    authRepo: authRepo,
    memberRepo: memberRepo,
  );
}

Future<void> addAMember() async {
  await sut.addMember(
    communityId: aCommunityId,
    phone: aMemberPhone,
    name: aMemberName,
  );
}

void main() {
  group('Member add', () {
    setUp(() {
      setupSut();
    });
    group('with auth', () {
      setUp(() {
        setupAuthWithAUser();
      });
      test(
        'should call repo.getCommunityMemberByUserId exactly once',
        () async {
          try {
            await addAMember();
          } catch (e) {}

          verify(memberRepo.getCommunityMemberByUserId(
            communityId: anyNamed("communityId"),
            userId: anyNamed("userId"),
          )).called(1);
        },
      );

      group('user with admin role', () {
        setUp(() {
          setupUserWithAdminRole();
        });
        test('should call repo.addMember exactly once', () async {
          await addAMember();

          verify(memberRepo.addMember(any)).called(1);
        });

        group('should set property', () {
          test('name', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.name, "name", aMemberName),
            )));
          });
          test('phone', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.phone, "phone", aMemberPhone),
            )));
          });
          test('communityId', () async {
            await addAMember();

            verify(memberRepo.addMember(argThat(
              isA<MemberCreateDto>()
                  .having((p0) => p0.communityId, "communityId", aCommunityId),
            )));
          });
        });
        test('should add member with member role', () async {
          await addAMember();

          verify(memberRepo.addMember(argThat(
            isA<MemberCreateDto>().having((p0) => p0.role, "role", "member"),
          )));
        });
      });
      group('user with member role', () {
        setUp(() {
          setupUserWithMemberRole();
        });
        test('should throw UserNotPermitError', () {
          expect(() async {
            await addAMember();
          }, throwsA(isA<UserNotPermitError>()));
        });

        test('should not call repo.addMember', () async {
          try {
            await addAMember();
          } catch (e) {}

          verifyNever(memberRepo.addMember(any));
        });
      });
      group('user not a member', () {
        test('should throw UserNotPermitError', () {
          expect(() async {
            await addAMember();
          }, throwsA(isA<UserNotPermitError>()));
        });

        test('should not call repo.memberAdd', () async {
          try {
            await addAMember();
          } catch (e) {}

          verifyNever(memberRepo.addMember(any));
        });
      });
    });
    group('without auth', () {
      setUp(() {
        setupAuthWithoutAUser();
      });
      test('should throw UserNotFoundError', () {
        expect(() async {
          await addAMember();
        }, throwsA(isA<UserNotFoundError>()));
      });
      test('should not call repo.getCommunityMemberByUserId', () async {
        try {
          await addAMember();
        } catch (e) {}

        verifyNever(memberRepo.getCommunityMemberByUserId(
          communityId: anyNamed("communityId"),
          userId: anyNamed("userId"),
        ));
      });
      test('should not call repo.addMember', () async {
        try {
          await addAMember();
        } catch (e) {}

        verifyNever(memberRepo.addMember(any));
      });
    });
  });
}
