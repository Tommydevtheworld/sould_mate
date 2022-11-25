part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoginWithGoogleRequest extends HomeEvent {}

class LoginWithFacebookRequest extends HomeEvent {}

class LoginWithTweeterRequest extends HomeEvent {}
