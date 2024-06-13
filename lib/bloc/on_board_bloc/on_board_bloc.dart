import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_board_event.dart';
part 'on_board_state.dart';

class OnBoardBloc extends Bloc<OnBoardEvent, OnBoardState> {
  OnBoardBloc() : super(const OnBoardState()) {
    on<ChangePageIndex>(_changePageIndex);
  }
  _changePageIndex(ChangePageIndex event, Emitter<OnBoardState> emit) {
    emit(state.copyWith(currentIndex: event.currentPageIndex));
  }
}
