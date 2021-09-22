import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.text,
    required this.iconss,
    required this.onpressed,
  }) : super(key: key);

  final String text;
  final FaIcon iconss;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.black,
          minimumSize: Size(double.infinity, 50),
        ),
        icon: iconss,
        onPressed: onpressed,
        label: Text(text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal))),
      ),
    );
  }
}
