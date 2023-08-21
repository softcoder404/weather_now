import 'package:flutter/material.dart';

import '../../../../themes/colors.dart';
import '../../../../themes/spacing.dart';
import '../../../../themes/styles.dart';
import 'bottom_line_indicator.dart';

enum PeriodLabelType {
  today,
  week,
}

class PeriodLabelIndicator extends StatelessWidget {
  const PeriodLabelIndicator({
    Key? key,
    required this.type,
    required this.selectedType,
    this.onTap,
  }) : super(key: key);
  final PeriodLabelType type;
  final PeriodLabelType selectedType;

  final void Function(PeriodLabelType)? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(type);
        }
      },
      child: Column(
        children: [
          Text(
            type == PeriodLabelType.today ? 'Today' : 'Week',
            style: AppTextStyle.body1.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.blue,
            ),
          ),
          VSpace.tiny,
          if (selectedType == type)
            const BottomLineIndicator(
              width: 40,
              color: AppColors.accentYellowColor,
            ),
        ],
      ),
    );
  }
}
