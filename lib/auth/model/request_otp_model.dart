// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RequestOtpModel {
  String challenge_id;
  int expires_in_seconds;
  RequestOtpModel({
    required this.challenge_id,
    required this.expires_in_seconds,
  });
  

  RequestOtpModel copyWith({
    String? challenge_id,
    int? expires_in_seconds,
  }) {
    return RequestOtpModel(
      challenge_id: challenge_id ?? this.challenge_id,
      expires_in_seconds: expires_in_seconds ?? this.expires_in_seconds,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'challenge_id': challenge_id,
      'expires_in_seconds': expires_in_seconds,
    };
  }

  factory RequestOtpModel.fromMap(Map<String, dynamic> map) {
    return RequestOtpModel(
      challenge_id: map['challenge_id'] as String,
      expires_in_seconds: map['expires_in_seconds'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestOtpModel.fromJson(String source) => RequestOtpModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RequestOtpModel(challenge_id: $challenge_id, expires_in_seconds: $expires_in_seconds)';

  @override
  bool operator ==(covariant RequestOtpModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.challenge_id == challenge_id &&
      other.expires_in_seconds == expires_in_seconds;
  }

  @override
  int get hashCode => challenge_id.hashCode ^ expires_in_seconds.hashCode;
}
