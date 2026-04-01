import 'package:e_commerce_app/feature/startup/bloc/onboarding_event.dart';
import 'package:e_commerce_app/feature/startup/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<BaseOnboardingEvent, OnboardingState> {
  OnboardingBloc()
    : super(
        OnboardingState(
          pageIndex: 0,
          currentStep: 1,
          progress: 1 / 3,
          totalSteps: 3,
        ),
      ) {
    on<OnboardingEvent>((event, emit) {
      final index = event.pageChangedIndex;
      final step = index + 1;
      emit(
        state.copyWith(
          pageIndex: index,
          currentStep: step,
          progress: step / state.totalSteps,
        ),
      );
    });
  }
}
