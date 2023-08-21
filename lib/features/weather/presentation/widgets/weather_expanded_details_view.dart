import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/weather/presentation/widgets/bottom_period_preview_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/cubit/period_selection_cubit.dart';

import '../../../../themes/colors.dart';
import '../../../../themes/spacing.dart';
import '../../../../themes/styles.dart';
import 'today_cloud_info_item.dart';

class WeatherExpandedDetailsView extends StatelessWidget {
  const WeatherExpandedDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          const BottomPeriodPreviewCard(),
          VSpace.tiny,
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 140.h,
                    width: double.infinity,
                    child: ListView.separated(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => HSpace.small,
                      itemBuilder: (context, index) {
                        return BlocBuilder<PeriodSelectionCubit,
                            PeriodSelectionState>(
                          buildWhen: (previous, current) =>
                              previous.selectedHour != current.selectedHour,
                          builder: (context, state) {
                            return TodayCloudItemInfo(
                              onTap: () =>
                                  BlocProvider.of<PeriodSelectionCubit>(context)
                                      .onHourChanged(index),
                              label: '${index + 2} PM',
                              isActive: index == state.selectedHour,
                              value: '${24.6 + index}',
                            );
                          },
                        );
                      },
                    ),
                  ),
                  //Additional Info
                  VSpace.large,
                  Text(
                    'Additional Info',
                    style: AppTextStyle.h4,
                  ),
                  VSpace.medium,
                  const CustomRowLabelValue(
                    label: 'Humidity',
                    value: '45.8 %',
                  ),
                  VSpace.medium,
                  const CustomRowLabelValue(
                    label: 'Wind',
                    value: '12 km/h',
                  ),
                  VSpace.medium,
                  const CustomRowLabelValue(
                    label: 'Visibity',
                    value: '15 km',
                  ),
                  VSpace.medium,
                  const CustomRowLabelValue(
                    label: 'Condition',
                    value: 'Partly Cloudy',
                  ),

                  VSpace.small,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomRowLabelValue extends StatelessWidget {
  const CustomRowLabelValue({
    Key? key,
    this.label,
    this.value,
  }) : super(key: key);
  final String? label;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label ?? 'Humidity',
          style: AppTextStyle.body3.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value ?? '35.5 %',
          style: AppTextStyle.body3.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
