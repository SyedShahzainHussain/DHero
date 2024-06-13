part of 'on_board_bloc.dart';

abstract class OnBoardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangePageIndex extends OnBoardEvent {
  final int currentPageIndex;
  ChangePageIndex(this.currentPageIndex);
}

