part of 'side_bar_cubit.dart';

final class SideBarState {
  final List<SideBarItemModel> listSideBarItemModel;
  final List<SideBarItemModel> listFilterSideBarItemModel;
  final int currentSelected;

  SideBarState({
    this.currentSelected = 0,
    required this.listSideBarItemModel,
    required this.listFilterSideBarItemModel,
  });

  SideBarState copyWith({
    int? currentSelected,
    List<SideBarItemModel>? listSideBarItemModel,
    List<SideBarItemModel>? listFilterSideBarItemModel,
  }) {
    return SideBarState(
      listSideBarItemModel: listSideBarItemModel ?? this.listSideBarItemModel,
      listFilterSideBarItemModel:
          listFilterSideBarItemModel ?? this.listFilterSideBarItemModel,
      currentSelected: currentSelected ?? this.currentSelected,
    );
  }
}
