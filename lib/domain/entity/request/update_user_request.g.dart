// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest(
      fullName: json['full_name'] as String?,
      investmentProfileCreated: json['investment_profile_created'] as bool?,
      isKycDone: json['is_kyc_done'] as bool?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      if (instance.fullName case final value?) 'full_name': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.investmentProfileCreated case final value?)
        'investment_profile_created': value,
      if (instance.isKycDone case final value?) 'is_kyc_done': value,
      if (instance.email case final value?) 'email': value,
    };
