// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:petskin/src/config/constant/firebase_constant.dart';
// import 'package:petskin/src/features/user/model/user_model.dart';

// class AuthRepository {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // 유저 상태 스트림으로 받기
//   Stream<User?> get authStateChange => _auth.authStateChanges();

//   // 구글 소셜 로그인
//   Future<void> signInWithGoogle() async {
//     // 구글 로그인하는 창 띄우기
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//     // 구글 로그인 정보 받기
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser!.authentication;
//     // credentail 생성
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     try {
//       // 가입하기
//       await _auth.signInWithCredential(credential);
//     } on FirebaseAuthException catch (e) {
//       debugPrint(e.toString());
//     }
//   }

//   // 서버에 유저정보 추가
//   Future<void> addNewUser(UserModel userModel) async {
//     try {
//       await _firestore
//           .collection(FirebaseConstant.userCollection)
//           .doc(userModel.uid)
//           .set(userModel.toMap());
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }

//   // 로그아웃
//   Future<void> signOut() async {
//     // 로그아웃시 푸시알림 수신 못하게 하기 위해 토큰값 null로 업데이트
//     _firestore
//         .collection(FirebaseConstant.userCollection)
//         .doc(_auth.currentUser!.uid)
//         .update({
//       'pushToken': null,
//     });
//     // 유저정보 토큰값을 앱 로컬에서 지우기
//     _auth.signOut();
//   }

//   // 탈퇴하기
//   Future<void> deleteUser() async {
//     try {
//       // DB에서 유저정보 삭제
//       _firestore
//           .collection(FirebaseConstant.userCollection)
//           .doc(_auth.currentUser!.uid)
//           .delete();
//       // auth 정보에서 삭제
//       // 재인증 필요한지 알아보기
//       _auth.currentUser!.delete();
//       debugPrint('탈퇴 성공');
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }
// }
