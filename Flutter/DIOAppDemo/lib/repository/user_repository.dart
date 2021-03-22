import 'package:DIOAppDemo/model/user_response.dart';
import 'package:DIOAppDemo/repository/user_api_provider.dart';

class UserRepository {
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser() async {
    return _apiProvider.getUser();
  }
}
