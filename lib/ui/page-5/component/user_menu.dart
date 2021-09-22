import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:flutter_money_tracker/ui/page-5/component/item_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ItemMenu(
          iconss: FaIcon(FontAwesomeIcons.userFriends, color: Colors.white),
          text: 'Friend',
          onpressed: () {
            //TODO: ADD THIS SHIT
          },
        ),
        ItemMenu(
          iconss: FaIcon(FontAwesomeIcons.moneyBillWave, color: Colors.white),
          text: 'Send Money',
          onpressed: () {},
        ),
        ItemMenu(
          iconss: FaIcon(FontAwesomeIcons.moneyCheckAlt, color: Colors.white),
          text: 'Withdrawal',
          onpressed: () {
            //TODO: ADD THIS SHIT
          },
        ),
        ItemMenu(
          iconss: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.white),
          text: 'Logout',
          onpressed: () {
            Provider.of<LoginController>(context, listen: false).logOut();
          },
        ),
      ],
    );
  }
}
