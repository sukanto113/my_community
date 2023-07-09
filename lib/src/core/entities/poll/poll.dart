import 'package:freezed_annotation/freezed_annotation.dart';
part 'poll.freezed.dart';

@freezed
class Poll with _$Poll{
  const factory Poll({
    required String id,
    required String communityId,
    required Iterable<PollOption> options,
  }) = _Poll;
}

@freezed
class PollOption with _$PollOption{
  const factory PollOption({
    required String id,
    required String pollId,
    required String title,
    required int totalVotes,
  }) = _PollOption;
}

@freezed
class PollVote with _$PollVote{
  const factory PollVote({
    required String id,
    required String pollOptionId,
    required String memberId,
  }) = _PollVote;
}
