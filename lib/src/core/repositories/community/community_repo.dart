import 'package:my_community/src/core/entities/community/community.dart';
import 'package:my_community/src/core/repositories/community/dtos/community_create_dot.dart';
import 'package:my_community/src/core/repositories/community/dtos/community_get_dto.dart';
import 'package:my_community/src/core/repositories/community/dtos/community_update_dto.dart';

abstract class ICommunityRepo {
  /// returns Community Id.
  Future<String> create(CommunityCreateDTO dto);

  Future<void> update(CommunityUpdateDTO dto);

  Future<Iterable<CommunityGetDTO>> getCommunitiesByUser(String userId);
}
