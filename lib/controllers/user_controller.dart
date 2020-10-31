import 'package:get/get.dart';
import 'package:getx_starter/api/user_api.dart';
import 'package:getx_starter/models/user.dart';

class UserController extends GetxController {
  var users = List<User>().obs;
  var isLoadInProgress = false.obs;

  @override
  void onInit() {
    // Get users from API
    fetchUsers();

    super.onInit();
  }

  void fetchUsers() async {
    isLoadInProgress.value = true;

    var fetchedUsers = await UserAPI.getUsers();
    users.value = fetchedUsers;

    isLoadInProgress.value = false;
  }
}
