import 'package:flutter/material.dart';

import '../../../../themes/colors.dart';

class BottomLineIndicator extends StatelessWidget {
  const BottomLineIndicator({super.key, this.color, this.width = 50.0});
  final double width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 4,
      decoration: BoxDecoration(
        color: color ?? AppColors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
