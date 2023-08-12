import '../../entities/community/community.dart';
import 'dtos/read/community_read_dto.dart';
import 'dtos/update/community_update_dto.dart';

extension CommunityRead2Community on CommunityReadDTO {
  Community toCommunity() {
    return Community(
      id: id,
      name: name,
      description: description,
      profileImage: profileImage,
      coverImage: coverImage,
    );
  }
}

extension Community2CommunityUpdate on Community {
  CommunityUpdateDTO toUpdateDto() {
    return CommunityUpdateDTO(
      id: id,
      name: name,
      description: description,
      profileImage: profileImage,
      coverImage: coverImage,
    );
  }
}
