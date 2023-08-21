import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/presentation/widgets/cubit/period_selection_cubit.dart';

import '../../../../themes/spacing.dart';
import 'bottom_line_indicator.dart';
import 'period_label_indicator.dart';

class BottomPeriodPreviewCard extends StatelessWidget {
  const BottomPeriodPreviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PeriodSelectionCubit, PeriodSelectionState>(
      buildWhen: (previous, current) =>
          previous.selectedPeriodLabel != current.selectedPeriodLabel,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: <Widget>[
              const BottomLineIndicator(),
              VSpace.small,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PeriodLabelIndicator(
                    type: PeriodLabelType.today,
                    selectedType: state.selectedPeriodLabel,
                    onTap: BlocProvider.of<PeriodSelectionCubit>(context)
                        .onPeriodLabelChanged,
                  ),
                  PeriodLabelIndicator(
                    type: PeriodLabelType.week,
                    selectedType: state.selectedPeriodLabel,
                    onTap: BlocProvider.of<PeriodSelectionCubit>(context)
                        .onPeriodLabelChanged,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
