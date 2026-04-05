import 'package:e_commerce_app/feature/authentication/presentation/bloc/check_box/check_box_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, bool> {
  CheckBoxBloc() : super(false) {
    on<CheckBoxEvent>((event, emit) {
      if (event.isRemember) {
        emit(event.isRemember);
      } else {
        emit(!event.isRemember);
      }
    });
  }
}
