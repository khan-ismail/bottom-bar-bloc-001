part of 'bottom_bar_bloc.dart';

@immutable
sealed class BottomBarState {
  final int currentIndex;

  const BottomBarState(this.currentIndex);
}

final class BottomBarInitial extends BottomBarState {
  const BottomBarInitial(super.currentIndex);
}
