part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  // Initial
  const factory DashboardEvent.initial() = _Initial;

  // Set Index
  const factory DashboardEvent.setIndex(int index) = _SetIndex;

  // Fetch Setting Data
  const factory DashboardEvent.fetchSettingData() = _FetchSettingData;

  // Update Checkbox State
  const factory DashboardEvent.updateCheckboxState() = _UpdateCheckboxState;
}
