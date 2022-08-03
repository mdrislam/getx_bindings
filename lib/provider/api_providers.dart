import 'package:get/get.dart';

class ApiProviders extends GetConnect {
  Future<dynamic> get getData => get('https://amvines.com/api/categor');
}
