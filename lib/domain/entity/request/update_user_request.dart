import 'package:json_annotation/json_annotation.dart';

part 'update_user_request.g.dart';

@JsonSerializable(
    fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class UpdateUserRequest {
  String? fullName;
  String? phoneNumber;
  bool? investmentProfileCreated;
  @JsonKey(name: 'is_kyc_done')
  bool? isKycDone;
  String? email;

  UpdateUserRequest(
      {this.fullName,
      this.investmentProfileCreated,
      this.isKycDone,
      this.phoneNumber,
      this.email});

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);
}
