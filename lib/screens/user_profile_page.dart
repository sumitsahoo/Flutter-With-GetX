import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_starter/models/user.dart';
import 'package:getx_starter/widgets/background_gradient.dart';
import 'package:getx_starter/widgets/custom_animation.dart';

class UserProfilePage extends StatelessWidget {
  final User user;
  final MaterialColor color;

  UserProfilePage(this.user, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BackgroundGradient(),
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              height: Get.width,
              width: Get.width,
              child: Hero(
                tag: user.id,
                child: Image(
                  width: Get.width,
                  height: Get.width,
                  image: NetworkImage(user.avatar),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: CustomAnimation(
                child: Card(
                  elevation: 15,
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              child: CustomAnimation(
                child: Opacity(
                  opacity: 0.3,
                  child: RawMaterialButton(
                    onPressed: () => Get.back(),
                    elevation: 0.0,
                    fillColor: Colors.black,
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    padding: EdgeInsets.all(0.0),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: Get.width - 30.0,
              left: 0.0,
              right: 0.0,
              child: CustomAnimation(
                child: Card(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: Get.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          user.name,
                          style: TextStyle(
                              fontFamily: 'Satisfy',
                              fontSize: 30,
                              color: color,
                              fontWeight: FontWeight.normal),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          user.email,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                        Text(
                          user.phone,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
