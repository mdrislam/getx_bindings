import 'package:get/get.dart';
import 'package:project_planning_with_getx/provider/api_providers.dart';

class UserController extends GetxController with StateMixin<dynamic> {
  ApiProviders? apiProviders;
  UserController({required this.apiProviders});

  @override
  void onReady() {
    _getDataList();
    super.onReady();
  }

  _getDataList() async {
    RxStatus.loading();
    apiProviders?.getData.then((value) {
      print(value);
      change(value, status: RxStatus.success());
    }).onError((error, stackTrace) {
      change(error, status: RxStatus.error());
      print(error);
    });
  }
}
