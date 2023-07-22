import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String paymentTagId,
    required String memberId,
    required double amount,
    String? tnxId,
    required bool isVerified,
  }) = _Payment;
}
