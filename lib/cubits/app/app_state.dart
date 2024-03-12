part of 'app_cubit.dart';

final class AppCubitState {
  final bool isOpenLeftSide, isOpenRightSide;
  AppCubitState({this.isOpenLeftSide = true, this.isOpenRightSide = true});

  AppCubitState copyWith({bool? isOpenLeftSide, bool? isOpenRightSide}) =>
      AppCubitState(
          isOpenLeftSide: isOpenLeftSide ?? this.isOpenLeftSide,
          isOpenRightSide: isOpenRightSide ?? this.isOpenRightSide);
}
