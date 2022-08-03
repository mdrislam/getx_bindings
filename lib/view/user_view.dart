import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_planning_with_getx/controller/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Bindings'),
      ),
      body: controller.obx(
          (state) => SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Text(state.body.toString()),
              ),
          onError: (error) => Center(
                child: Text(error.toString()),
              ),
          onLoading: const Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}
