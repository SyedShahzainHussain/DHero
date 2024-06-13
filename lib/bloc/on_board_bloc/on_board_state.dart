part of 'on_board_bloc.dart';

class OnBoardState extends Equatable {
  final int currentIndex;
  final double percentage;

  const OnBoardState({this.currentIndex = 0, this.percentage = 0.5});

  OnBoardState copyWith({int? currentIndex, double? percentage}) {
    return OnBoardState(
      currentIndex: currentIndex ?? this.currentIndex,
      percentage: percentage ?? this.percentage,
    );
  }

  @override
  List<Object?> get props => [currentIndex, percentage];
}
