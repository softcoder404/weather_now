part of 'period_selection_cubit.dart';

class PeriodSelectionState extends Equatable {
  final PeriodLabelType selectedPeriodLabel;
  final int selectedHour;
  const PeriodSelectionState(
      {required this.selectedPeriodLabel, required this.selectedHour});
  PeriodSelectionState copyWith(
          {PeriodLabelType? selectedPeriodLabel, int? selectedHour}) =>
      PeriodSelectionState(
        selectedHour: selectedHour ?? this.selectedHour,
        selectedPeriodLabel: selectedPeriodLabel ?? this.selectedPeriodLabel,
      );
  @override
  List<Object?> get props => [selectedPeriodLabel, selectedHour];
}
