part of 'scroll_bloc.dart';

abstract class ScrollState extends Equatable {
  const ScrollState();
  
  @override
  List<Object> get props => [];
}

class ScrollInitial extends ScrollState {}
