part of 'scroll_bloc.dart';

abstract class ScrollEvent extends Equatable {
  const ScrollEvent();

  @override
  List<Object> get props => [];
}

class ScrollingStarted extends ScrollEvent {
  final double scrollOffset;
  final DateTime dateTime;

  const ScrollingStarted({required this.scrollOffset, required this.dateTime});

  @override
  List<Object> get props => [scrollOffset, dateTime];
}
