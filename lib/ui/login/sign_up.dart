// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:flutter_money_tracker/ui/login/component/logged_ui.dart';
import 'package:flutter_money_tracker/ui/login/component/login.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<LoginController>(
          builder: (context, models, child) {
            // if we already logged in
            if (models.userDetails != null) {
              return Center(
                child: LoggedInUi(
                ),
              );
            } else {
              return Login(context: context);
            }
          },
        ),
      ),
    );
  }
}
