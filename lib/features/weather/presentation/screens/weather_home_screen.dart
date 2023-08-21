import 'dart:developer';

import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/dependency_injections.dart';
import 'package:weather_app/features/weather/presentation/blocs/weather_condition_bloc.dart';
import 'package:weather_app/features/weather/presentation/widgets/bottom_period_preview_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/cubit/period_selection_cubit.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_expanded_details_view.dart';

import '../widgets/home_details_view.dart';

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => PeriodSelectionCubit(),
        child: Builder(builder: (context) {
          return DraggableBottomSheet(
            minExtent: 100,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: const BottomPeriodPreviewCard(),
            expandedWidget: const WeatherExpandedDetailsView(),
            backgroundWidget: const HomeDetailsView(),
            maxExtent: MediaQuery.of(context).size.height * 0.65,
            onDragging: (pos) {},
          );
        }),
      ),
    );
  }
}
