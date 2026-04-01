import 'package:e_commerce_app/feature/startup/bloc/onboarding_event.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<BaseOnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState(pageIndex: 0)) {
    on<OnboardingEvent>((event, emit) {
      emit(state.copyWith(pageIndex: event.pageChangedIndex));
    });
  }
}
