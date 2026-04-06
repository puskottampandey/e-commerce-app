import 'package:equatable/equatable.dart';

class CheckBoxEvent extends Equatable {
  final bool isRemember;
  const CheckBoxEvent({required this.isRemember});

  @override
  List<Object?> get props => [isRemember];

  CheckBoxEvent copyWith({bool? isRemember}) {
    return CheckBoxEvent(isRemember: isRemember ?? this.isRemember);
  }
}
