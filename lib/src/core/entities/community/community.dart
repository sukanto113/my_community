import 'package:freezed_annotation/freezed_annotation.dart';
part 'community.freezed.dart';

@freezed
class Community with _$Community {
  const factory Community({
    required String id,
    required String name,
    String? description,
    String? profileImage,
    String? coverImage,
  }) = _Community;
}
