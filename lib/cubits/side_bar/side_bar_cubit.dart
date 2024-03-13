import 'package:contact_app/contrast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contact_app/models/side_bar_item.dart';

part 'side_bar_state.dart';

class SideBarCubit extends Cubit<SideBarState> {
  SideBarCubit()
      : super(SideBarState(
            listSideBarItemModel: listSideBarItemModel,
            listFilterSideBarItemModel: listSideBarItemModel));

  void changeIndex(int index) {
    emit(state.copyWith(currentSelected: index));
  }

  void resetFilter() {
    final listFullItem = state.listSideBarItemModel;
    emit(state.copyWith(listFilterSideBarItemModel: listFullItem));
  }

  void searchFilter(String value) {
    final listFullItem = state.listSideBarItemModel;
    if (value != "") {
      final newFilterList = listFullItem
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
      emit(state.copyWith(listFilterSideBarItemModel: newFilterList));
    } else {
      emit(state.copyWith(listFilterSideBarItemModel: listFullItem));
    }
  }
}
