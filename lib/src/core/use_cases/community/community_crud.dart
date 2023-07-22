import 'package:my_community/src/core/i_services/community/community_crud_service.dart';

import '../../entities/community/community.dart';
import '../../entities/user/user.dart';

class CommunityCrud {
  CommunityCrud(this.service);
  final ICommunityCrudService service;
  final Auth auth = Auth();

  //controller will only handle event from ui
  Future<void> createCommunity(String name) async {
    final User? user = auth.getUser();
    if (user != null) {
      String id = await service.createCommunity(user.id);
      await service.setCommunityName(id, name);
    } else {
      throw Exception("User Not Found");
    }
  }
}

class Auth {
  User? getUser() {
    return const User(id: "1", phone: "01937736465");
  }
}
