import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/presentation/widgets/period_label_indicator.dart';

part 'period_selection_state.dart';

class PeriodSelectionCubit extends Cubit<PeriodSelectionState> {
  PeriodSelectionCubit()
      : super(const PeriodSelectionState(
            selectedPeriodLabel: PeriodLabelType.today, selectedHour: 1));
  void onPeriodLabelChanged(PeriodLabelType type) =>
      emit(state.copyWith(selectedPeriodLabel: type));
  void onHourChanged(int hr) => emit(state.copyWith(selectedHour: hr));
}
