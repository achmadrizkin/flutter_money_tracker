// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LoginController model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 5,
              backgroundImage:
                  Image.network(model.userDetails!.photoURL ?? "").image,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              model.userDetails!.displayName ?? "",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.verified_user,
                    color: Colors.blue,
                    size: MediaQuery.of(context).size.width / 20),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  model.userDetails!.email ?? "",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: MediaQuery.of(context).size.width / 26)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
