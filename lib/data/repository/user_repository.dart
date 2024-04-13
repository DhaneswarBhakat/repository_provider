import 'package:repository_provider/data/model/user_model.dart';
import 'package:repository_provider/data/provider/user_provider.dart';

abstract class IUserRepository {
  Future<UserModel> getUser();
}

class UserRepository implements IUserRepository {
  final UserProvider userProvider;
  UserRepository(this.userProvider);
  @override
  Future<UserModel> getUser() async {
    return userProvider.getUsers();
  }
}
