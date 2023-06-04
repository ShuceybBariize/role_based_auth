import 'package:flutter/material.dart';

import '../colors.dart';
import 'mainpage.dart';

class Menu_admin extends StatefulWidget {
  const Menu_admin({super.key});

  @override
  State<Menu_admin> createState() => _Menu_adminState();
}

class _Menu_adminState extends State<Menu_admin> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        surfaceTintColor: Colors.amber,
        backgroundColor: Colors.grey[300],
        width: 250,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            side: BorderSide(color: Kactivecolor, width: 2.5)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Admin_Profile_MEnu(),
              Build_Menu_list(context),
            ],
          ),
        ));
  }
}
