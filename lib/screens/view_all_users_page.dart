import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter/controllers/user_controller.dart';
import 'package:getx_starter/util/app_util.dart';
import 'package:getx_starter/widgets/background_gradient.dart';
import 'package:getx_starter/widgets/header_card.dart';
import 'package:getx_starter/widgets/user_card.dart';

class ViewAllUsersPage extends StatelessWidget {
  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          AppUtil.appName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),*/
      body: Container(
        width: double.infinity,
        decoration: BackgroundGradient(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCard(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GetX<UserController>(builder: (controller) {
                return controller.users.length == 0
                    ? Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        ),
                      )
                    : MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          itemCount: controller.users.length,
                          itemBuilder: (context, index) {
                            return UserCard(controller.users[index]);
                          },
                        ),
                      );
              }),
            )
          ],
        ),
      ),
      backgroundColor: AppUtil.appThemeColor,
    );
  }
}
