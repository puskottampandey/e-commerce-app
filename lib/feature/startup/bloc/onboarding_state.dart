import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int pageIndex;
  final int currentStep;
  final int totalSteps;
  final double progress;
  const OnboardingState({
    required this.pageIndex,
    required this.currentStep,
    required this.progress,
    required this.totalSteps,
  });
  @override
  List<Object?> get props => [pageIndex, currentStep];
  OnboardingState copyWith({
    int? pageIndex,
    int? currentStep,
    int? totalSteps,
    double? progress,
  }) {
    return OnboardingState(
      pageIndex: pageIndex ?? this.pageIndex,
      currentStep: currentStep ?? this.currentStep,
      progress: progress ?? this.progress,
      totalSteps: totalSteps ?? this.totalSteps,
    );
  }
}
