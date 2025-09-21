part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required RequestState state,
    required String message,
    required int index,
    required String? privacyPolicy,
    required String? termsOfService,
    required String? aboutUs,
    required bool isChecked,
  }) = _DashboardState;

  factory DashboardState.initial() {
    return DashboardState(
      state: RequestState.initial,
      message: '',
      index: 0,
      privacyPolicy: null,
      termsOfService: null,
      aboutUs: null,
      isChecked: false,
    );
  }
}
