import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sould_mate/repositories/authentication_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const HomeState()) {
    on<LoginWithGoogleRequest>(_onAuthenticationStatusChanged);
  }

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> close() {
    _authenticationRepository.dispose();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(
    LoginWithGoogleRequest event,
    Emitter<HomeState> emit,
  ) async {
    _authenticationRepository.signInWithGoogle();
  }
}
