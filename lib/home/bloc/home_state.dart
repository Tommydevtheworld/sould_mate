part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState(
      {this.googleCredential, this.facebookCredential, this.twitterCredential});

  final String? googleCredential;
  final String? facebookCredential;
  final String? twitterCredential;

  @override
  List<String?> get props =>
      [googleCredential, facebookCredential, twitterCredential];
}
