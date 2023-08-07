import 'package:my_community/src/core/repositories/community/dtos/community_update_dto.dart';

import '../../entities/community/community.dart';
import 'dtos/community_get_dto.dart';

extension GetCommunityDtoToCommunity on CommunityGetDTO {
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

extension CommunityToUpdateDto on Community {
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
