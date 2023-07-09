import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_tag.freezed.dart';

@freezed
class PaymentTag with _$PaymentTag {
  const factory PaymentTag({
    required String id,
    required String communityId,
    required String name,
  }) = _PaymentTag;
}
