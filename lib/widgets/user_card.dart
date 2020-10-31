import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter/models/user.dart';
import 'package:getx_starter/screens/user_profile_page.dart';

Card UserCard(User user) {
  final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  return Card(
    elevation: 15,
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            topLeft: Radius.circular(60),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10))),
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: () => Get.to(UserProfilePage(user, color)),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: color,
              child: Hero(
                tag: user.id,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(user.avatar),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(
                          fontFamily: 'Satisfy',
                          fontSize: 24,
                          color: color,
                          fontWeight: FontWeight.normal),
                      maxLines: 1,
                    ),
                    Text(
                      user.email,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      maxLines: 1,
                    ),
                    Text(
                      '#' + user.id,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
