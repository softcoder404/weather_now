import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/themes/spacing.dart';

// App TextStyles

abstract class AppTextStyle {
  static final buttonTextStyle = TextStyle(
    fontSize: AppSize.mediumLarge.sp,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'PlusJakartaSans',
    height: 1.25,
  );

  static final h1 = TextStyle(
    fontSize: AppSize.xxLarge.sp,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    height: 1.25,
    fontFamily: 'PlusJakartaSans',
  );
  static final h2 = TextStyle(
    fontSize: AppSize.xLarge.sp,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    height: 1.25,
    fontFamily: 'PlusJakartaSans',
  );
  static final h3 = TextStyle(
    fontSize: AppSize.large.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    height: 1.25,
    fontFamily: 'PlusJakartaSans',
  );
  static final h4 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    height: 1.25,
    fontFamily: 'PlusJakartaSans',
  );

  static final body1 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    fontFamily: 'PlusJakartaSans',
  );

  static final body2 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    fontFamily: 'PlusJakartaSans',
  );

  static final body3 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    fontFamily: 'PlusJakartaSans',
  );

  static const caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    fontFamily: 'PlusJakartaSans',
  );
}
