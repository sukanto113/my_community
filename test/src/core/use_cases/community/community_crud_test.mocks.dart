// Mocks generated by Mockito 5.4.2 from annotations
// in my_community/test/src/core/use_cases/community/community_crud_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:my_community/src/core/entities/member/member.dart' as _i8;
import 'package:my_community/src/core/entities/user/user.dart' as _i11;
import 'package:my_community/src/core/repositories/auth/auth_repo.dart' as _i10;
import 'package:my_community/src/core/repositories/community/community_repo.dart'
    as _i2;
import 'package:my_community/src/core/repositories/community/dtos/create/community_create_dot.dart'
    as _i4;
import 'package:my_community/src/core/repositories/community/dtos/read/community_read_dto.dart'
    as _i6;
import 'package:my_community/src/core/repositories/community/dtos/update/community_update_dto.dart'
    as _i5;
import 'package:my_community/src/core/repositories/member/dtos/create/member_create_dto.dart'
    as _i9;
import 'package:my_community/src/core/repositories/member/member_repo.dart'
    as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ICommunityRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockICommunityRepo extends _i1.Mock implements _i2.ICommunityRepo {
  @override
  _i3.Future<String> create(_i4.CommunityCreateDTO? dto) => (super.noSuchMethod(
        Invocation.method(
          #create,
          [dto],
        ),
        returnValue: _i3.Future<String>.value(''),
        returnValueForMissingStub: _i3.Future<String>.value(''),
      ) as _i3.Future<String>);
  @override
  _i3.Future<void> update(_i5.CommunityUpdateDTO? dto) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [dto],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<Iterable<_i6.CommunityReadDTO>> readCommunitiesByUser(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #readCommunitiesByUser,
          [userId],
        ),
        returnValue: _i3.Future<Iterable<_i6.CommunityReadDTO>>.value(
            <_i6.CommunityReadDTO>[]),
        returnValueForMissingStub:
            _i3.Future<Iterable<_i6.CommunityReadDTO>>.value(
                <_i6.CommunityReadDTO>[]),
      ) as _i3.Future<Iterable<_i6.CommunityReadDTO>>);
}

/// A class which mocks [IMemberRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMemberRepo extends _i1.Mock implements _i7.IMemberRepo {
  @override
  _i3.Future<Iterable<_i8.Member>> getMembers(String? communityId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMembers,
          [communityId],
        ),
        returnValue: _i3.Future<Iterable<_i8.Member>>.value(<_i8.Member>[]),
        returnValueForMissingStub:
            _i3.Future<Iterable<_i8.Member>>.value(<_i8.Member>[]),
      ) as _i3.Future<Iterable<_i8.Member>>);
  @override
  _i3.Future<String> addMember(_i9.MemberCreateDto? dto) => (super.noSuchMethod(
        Invocation.method(
          #addMember,
          [dto],
        ),
        returnValue: _i3.Future<String>.value(''),
        returnValueForMissingStub: _i3.Future<String>.value(''),
      ) as _i3.Future<String>);
}

/// A class which mocks [IAuthRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthRepo extends _i1.Mock implements _i10.IAuthRepo {
  @override
  _i3.Future<_i11.User?> getCurrentUser() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentUser,
          [],
        ),
        returnValue: _i3.Future<_i11.User?>.value(),
        returnValueForMissingStub: _i3.Future<_i11.User?>.value(),
      ) as _i3.Future<_i11.User?>);
}
