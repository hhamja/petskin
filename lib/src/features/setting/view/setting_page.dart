import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/features/setting/component/setting_tile.dart';

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
            onTap: () async{
              context.router.push(const AppNoticeRoute());
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
