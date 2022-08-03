import 'package:get/get.dart';
import 'package:project_planning_with_getx/controller/user_controller.dart';
import 'package:project_planning_with_getx/provider/api_providers.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController(apiProviders: Get.put(ApiProviders())));
  }
}
