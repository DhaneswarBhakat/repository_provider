import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository_provider/bloc/user_event.dart';
import 'package:repository_provider/bloc/user_state.dart';
import 'package:repository_provider/data/repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoading());
      try {
        final userModel = await userRepository.getUser();
        emit(UserSucessState(userModel));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
