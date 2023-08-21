import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/utils/time_utils.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';
import 'package:weather_app/features/weather/presentation/blocs/bloc.dart';

import '../../../../dependency_injections.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/spacing.dart';
import '../../../../themes/styles.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
  late final TextEditingController searchCtrl;
  @override
  void initState() {
    searchCtrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<WeatherConditionBloc>(),
        child: Builder(builder: (context) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: TextFormField(
                      controller: searchCtrl,
                      onFieldSubmitted: (value) {
                        if (value.isEmpty || value.length < 2) return;
                        final event = GetWeatherConcreteConditionEvent(value);
                        BlocProvider.of<WeatherConditionBloc>(context)
                            .add(event);
                        searchCtrl.clear();
                        FocusScope.of(context).unfocus();
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search for a country or city',
                      ),
                    ),
                  ),
                  VSpace.large,
                  BlocBuilder<WeatherConditionBloc, WeatherConditionState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return Column(
                          children: [
                            const WeatherCloudEmptyInfo(),
                            VSpace.large,
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircularProgressIndicator(
                                backgroundColor: AppColors.accentYellowColor,
                              ),
                            )
                          ],
                        );
                      } else if (state is Loaded) {
                        return WeatherCloudInfo(
                            weatherConditionEntity: state.weatherCondition);
                      } else {
                        return const WeatherCloudEmptyInfo();
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class WeatherCloudInfo extends StatelessWidget {
  const WeatherCloudInfo({super.key, required this.weatherConditionEntity});
  final WeatherConditionEntity weatherConditionEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          weatherConditionEntity.locationName,
          style: AppTextStyle.h2.copyWith(
            color: AppColors.blue,
          ),
        ),
        VSpace.medium,
        Stack(
          children: [
            const SizedBox(
              height: 120,
            ),
            Text(
              '${weatherConditionEntity.tempInCelcius}°',
              style: AppTextStyle.h1.copyWith(
                fontSize: 54,
                color: AppColors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            Positioned(
              bottom: -15,
              left: 20,
              child: Image.asset(
                weatherConditionEntity.cloudIcon,
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
        VSpace.medium,
        Text(
          TimeUtils.formatDateTime(weatherConditionEntity.localTime,
              showDay: true),
          style: AppTextStyle.body1.copyWith(
            color: AppColors.blue,
          ),
        ),
        VSpace.medium,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.alarm_sharp,
              color: AppColors.blue,
            ),
            HSpace.tiny,
            Text(
              TimeUtils.formatHourDateTime(weatherConditionEntity.localTime),
              style: AppTextStyle.body1.copyWith(
                color: AppColors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class WeatherCloudEmptyInfo extends StatelessWidget {
  const WeatherCloudEmptyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Check Weather Info',
          style: AppTextStyle.h2.copyWith(
            color: AppColors.blue,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        VSpace.medium,
        Image.asset(
          'assets/images/sunny.png',
          height: 120,
          width: 120,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
