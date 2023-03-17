import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String userName;
  final String profileUrl;
  // fcm의 장치 토큰 값
  // 푸시 알림 수신시 필요하며, 유저 로그아웃시 null로 update하기 위해 nullable
  final String? pushToken;
  final bool activityPushNtf;
  final bool marketingConsent;
  final bool nightPushNtf;
  // 탈퇴유저 플래그
  // 탈퇴유저의 경우 true, 비탈퇴유저의 경우 false
  final bool isWithdrawn;
  // 탈퇴 시간
  // 계정 복구 및 일정기간 재가입 못하게 하기 위함
  final Timestamp? withdrawnAt;
  final Timestamp updatedAt;
  final Timestamp createdAt;

  UserModel({
    required this.uid,
    required this.userName,
    required this.profileUrl,
    this.pushToken,
    required this.activityPushNtf,
    required this.marketingConsent,
    required this.nightPushNtf,
    required this.isWithdrawn,
    required this.updatedAt,
    required this.createdAt,
    this.withdrawnAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'userName': userName,
      'profileUrl': profileUrl,
      'pushToken': pushToken,
      'activityPushNtf': activityPushNtf,
      'marketingConsent': marketingConsent,
      'nightPushNtf': nightPushNtf,
      'isWithdrawn': isWithdrawn,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
      'withdrawnAt': withdrawnAt,
    };
  }

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      userName: map['userName'],
      profileUrl: map['profileUrl'],
      pushToken: map['pushToken'],
      activityPushNtf: map['activityPushNtf'],
      marketingConsent: map['marketingConsent'],
      nightPushNtf: map['nightPushNtf'],
      isWithdrawn: map['isWithdrawn'],
      updatedAt: map['updatedAt'],
      createdAt: map['createdAt'],
      withdrawnAt: map['withdrawnAt'],
    );
  }
}
