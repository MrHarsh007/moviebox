import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/utilities/remote_config.dart';

part 'dashboard_state.dart';
part 'dashboard_event.dart';
part 'dashboard_bloc.freezed.dart';

@singleton
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(DashboardState.initial());
        },
        setIndex: (event) async {
          emit(state.copyWith(index: event.index));
        },
        fetchSettingData: (_) async {
          final String privacyPolicy = RemoteConfigService().getString(
            'privacy_policy',
          );
          final String termsOfService = RemoteConfigService().getString(
            'terms_condition',
          );
          final String aboutUs = RemoteConfigService().getString('about_us');
          emit(
            state.copyWith(
              state: RequestState.loaded,
              privacyPolicy: privacyPolicy,
              termsOfService: termsOfService,
              aboutUs: aboutUs,
            ),
          );
        },
        updateCheckboxState: (_UpdateCheckboxState value) {
          emit(
            state.copyWith(
              state: RequestState.initial,
              isChecked: !state.isChecked,
            ),
          );
        },
      );
    });
  }
}
