import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';

class SettingTile extends StatelessWidget {
  final void Function() onTap;
  final String title;
  const SettingTile({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 21),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: TEXT_COLOR,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right_sharp,
      ),
    );
  }
}
