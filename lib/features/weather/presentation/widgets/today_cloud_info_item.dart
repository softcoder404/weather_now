import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/colors.dart';
import '../../../../themes/styles.dart';

class TodayCloudItemInfo extends StatelessWidget {
  const TodayCloudItemInfo({
    Key? key,
    this.label,
    this.cloudIconCode,
    this.value,
    this.onTap,
    this.isActive = true,
  }) : super(key: key);
  final String? cloudIconCode;
  final String? label;
  final String? value;
  final VoidCallback? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: double.infinity,
        width: 120.w,
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primaryLightColor.withOpacity(.5)
              : Colors.white,
          border: Border.all(
            color: AppColors.grey.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              label?.toUpperCase() ?? '2 Am'.toUpperCase(),
              style: AppTextStyle.h4.copyWith(
                color: AppColors.blue,
                fontSize: 14.sp,
              ),
            ),
            Image.asset(
              cloudIconCode ?? 'assets/icons/clouds/day/116.png',
            ),
            Text(
              '${value ?? '16.53'}°'.toUpperCase(),
              style: AppTextStyle.body3.copyWith(
                color: AppColors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
