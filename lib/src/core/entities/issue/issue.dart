import 'package:freezed_annotation/freezed_annotation.dart';
part 'issue.freezed.dart';

@freezed
class Issue with _$Issue{
  const factory Issue({
    required String id,
    required String communityId,
    required String title,
    String? description,
    required bool isArchived,
  }) = _Issue;
}