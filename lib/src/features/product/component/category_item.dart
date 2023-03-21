import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';

class CategoryItem extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String categoryText;
  final double iconSize;
  final Color iconColor;

  const CategoryItem({
    required this.onTap,
    required this.icon,
    required this.categoryText,
    required this.iconSize,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          const SizedBox(height: 5),
          Text(
            categoryText,
            style: const TextStyle(
              color: TEXT_COLOR,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
