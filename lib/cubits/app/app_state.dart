part of 'app_cubit.dart';

final class AppCubitState {
  final bool isOpenLeftSide, isOpenRightSide;
  // final int currentSelected;
  // final List<SideBarItemModel> listSideBarItemModel;
  // final List<SideBarItemModel> listFilterSideBarItemModel;

  AppCubitState({
    this.isOpenLeftSide = true,
    this.isOpenRightSide = true,
    // this.currentSelected = 0,
    // required this.listSideBarItemModel,
  });

  AppCubitState copyWith({
    bool? isOpenLeftSide,
    bool? isOpenRightSide,
    // int? currentSelected,
    // List<SideBarItemModel>? listSideBarItemModel,
  }) =>
      AppCubitState(
        isOpenLeftSide: isOpenLeftSide ?? this.isOpenLeftSide,
        isOpenRightSide: isOpenRightSide ?? this.isOpenRightSide,
        // currentSelected: currentSelected ?? this.currentSelected,
        // listSideBarItemModel:listSideBarItemModel ?? this.listSideBarItemModel
      );
}
