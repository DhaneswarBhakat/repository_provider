import 'package:repository_provider/data/model/user_model.dart';

sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSucessState extends UserState {
  final UserModel userModel;
  UserSucessState(this.userModel);
}

final class UserErrorState extends UserState {
  final String message;
  UserErrorState(this.message);
}
