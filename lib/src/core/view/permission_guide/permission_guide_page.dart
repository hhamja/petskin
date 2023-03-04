import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_name.dart';
import 'package:petskin/src/config/constant/app_space.dart';
import 'package:petskin/src/core/view/permission_guide/permission_item.dart';

class PermissionGuidePage extends StatelessWidget {
  const PermissionGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              '앱 접근 권한 안내',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: HEIGHT_MEDIUM),
            Text(
              '$APP_NAME는 아래 권한들이 필요해요!\n서비스 사용 중 앱에서 요청 시 허용해주세요.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: HEIGHT_MEDIUM),
            const PermissionItem(
              icon: Icon(
                CupertinoIcons.photo,
                size: 16,
              ),
              permissionName: '사진(선택)',
              guideContent: '저장된 사진에서 프로필 설정 시 사용',
            ),
            const SizedBox(height: HEIGHT_SMALL),
            const PermissionItem(
              icon: Icon(
                CupertinoIcons.camera,
                size: 16,
              ),
              permissionName: '카메라(선택)',
              guideContent: '카메라로 촬영하여 프로필 설정 시 사용',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('확인'),

        // CustomFullFilledTextButton(
        //   '확인',
        //   () async {
        //     // 알림 권한 요청
        //     await Permission.notification.request();
        //   },
        //   PRIMARY_COLOR,
        // ),
      ),
    );
  }
}
