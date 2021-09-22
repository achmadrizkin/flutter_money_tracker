// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:flutter_money_tracker/ui/page-5/component/body_result.dart';
import 'package:provider/provider.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Consumer<LoginController>(
            builder: (context, models, child) {
              return BodyResult(
                model: models,
              );
            },
          ),
        ),
      ),
    );
  }
}

