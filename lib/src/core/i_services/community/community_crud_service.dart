abstract class ICommunityCrudService {
  Future<String> createCommunity(String userId);

  Future<void> setCommunityName(String id, String name);
}
