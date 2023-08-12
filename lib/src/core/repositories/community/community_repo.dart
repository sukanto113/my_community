import 'dtos/create/community_create_dot.dart';
import 'dtos/read/community_read_dto.dart';
import 'dtos/update/community_update_dto.dart';

abstract class ICommunityRepo {
  /// returns Community Id.
  Future<String> create(CommunityCreateDTO dto);

  Future<void> update(CommunityUpdateDTO dto);

  Future<Iterable<CommunityReadDTO>> readCommunitiesByUser(String userId);
}
