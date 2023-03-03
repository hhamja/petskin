import 'package:petskin/utils/index/index.dart';

class PermissionItem extends StatelessWidget {
  final Icon icon;
  final String permissionName;
  final String guideContent;

  PermissionItem({
    required this.icon,
    required this.permissionName,
    required this.guideContent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 6.5, 0),
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
