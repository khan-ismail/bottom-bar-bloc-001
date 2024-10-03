part of 'bottom_bar_bloc.dart';

@immutable
sealed class BottomBarEvent {}

final class OnChangeBottomBarTabEvent extends BottomBarEvent {
  final int selectedIndex;
  OnChangeBottomBarTabEvent(this.selectedIndex);
}
