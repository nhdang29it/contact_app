import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  AppCubit() : super(AppCubitState());

  void toggleRightSideBar() {
    bool currentState = state.isOpenRightSide;
    emit(state.copyWith(isOpenRightSide: !currentState));
  }

  void openRightSideBar() {
    emit(state.copyWith(isOpenRightSide: true));
  }

  void closeRightSideBar() {
    emit(state.copyWith(isOpenRightSide: false));
  }

  void toggleLeftSideBar() {
    bool currentState = state.isOpenLeftSide;
    emit(state.copyWith(isOpenRightSide: !currentState));
  }
}
