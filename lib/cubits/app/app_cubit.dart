import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  AppCubit() : super(AppCubitState());

  void toggleRightSideBar() {
    bool currentState = state.isOpenRightSide;
    emit(state.copyWith(isOpenRightSide: !currentState));
  }

  void openRightSideBar() {
    if (state.isOpenRightSide == true) return;
    emit(state.copyWith(isOpenRightSide: true));
  }

  void closeRightSideBar() {
    if (state.isOpenRightSide == false) return;
    emit(state.copyWith(isOpenRightSide: false));
  }

  void toggleLeftSideBar() {
    bool currentState = state.isOpenLeftSide;
    emit(state.copyWith(isOpenRightSide: !currentState));
  }

  void openLeftSideBar() {
    if (state.isOpenLeftSide == true) return;
    emit(state.copyWith(isOpenLeftSide: true));
  }

  void closeLeftSideBar() {
    if (state.isOpenLeftSide == false) return;
    emit(state.copyWith(isOpenLeftSide: false));
  }

  // void changeIndex(int index) {
  //   emit(state.copyWith(currentSelected: index));
  // }
}
