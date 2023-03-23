import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner.freezed.dart';
part 'car_owner.g.dart';

@freezed
class CarOwner with _$CarOwner {
  const factory CarOwner({
    required String id,
    required String name,
    String? address,
    required String phone,
    String? avatarUrl,
  }) = _CarOwner;

  factory CarOwner.fromJson(Map<String, dynamic> json) =>
      _$CarOwnerFromJson(json);
}
