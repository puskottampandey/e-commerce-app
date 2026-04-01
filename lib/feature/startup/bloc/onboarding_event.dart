abstract class BaseOnboardingEvent {}

class OnboardingEvent extends BaseOnboardingEvent {
  final int pageChangedIndex;
  OnboardingEvent({required this.pageChangedIndex});
}
