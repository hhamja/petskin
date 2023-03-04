import 'package:flutter/material.dart';

class PermissionItem extends StatelessWidget {
  final Icon icon;
  final String permissionName;
  final String guideContent;

  const PermissionItem({
    required this.icon,
    required this.permissionName,
    required this.guideContent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 6.5, 0),
          child: icon,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              permissionName,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              guideContent,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
