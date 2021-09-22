import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:flutter_money_tracker/ui/page-5/component/user_info.dart';
import 'package:flutter_money_tracker/ui/page-5/component/user_menu.dart';

class BodyResult extends StatelessWidget {
  const BodyResult({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LoginController model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UserInfo(
          model: model,
        ),
        UserMenu(),
      ],
    );
  }
}


