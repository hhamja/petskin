import 'package:flutter/material.dart';
import 'package:petskin/src/features/user/component/setting_tile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: Column(
        children: [
          SettingTile(
            onTap: () {
              // 공지사항 웹뷰 페이지 이동
            },
            title: '공지사항',
          ),
          SettingTile(
              onTap: () {
                // 이용약관
              },
              title: '이용약관'),
          SettingTile(
              onTap: () {
                // 개인정보 처리방침
              },
              title: '개인정보 처리방침'),
        ],
      ),
    );
  }
}
