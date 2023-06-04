import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roles/admin/order_view.dart';
import 'package:roles/admin/report.dart';

import '../colors.dart';
import '../login.dart';
import 'create_user.dart';
import 'menu_admin.dart';

export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Future<void> logout(BuildContext context) async {
  const CircularProgressIndicator();
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ),
  );
}

class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                logout(context);
              },
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
          elevation: 1,
          title: Text(
            "ADMIN",
            style: GoogleFonts.inter(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          centerTitle: true,
        ),
        drawer: const Menu_admin(),
        body: const Center(
            child: Text(
          "Welcome",
          style: TextStyle(fontSize: 50),
        )),
      ),
    );
  }
}

class Admin_Profile_MEnu extends StatefulWidget {
  const Admin_Profile_MEnu({super.key});

  @override
  State<Admin_Profile_MEnu> createState() => _Admin_Profile_MEnuState();
}

class _Admin_Profile_MEnuState extends State<Admin_Profile_MEnu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Kactivecolor,
      height: 210,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/profile.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Group 2 Group 1",
            style: GoogleFonts.inter(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "group2@gmail.com",
            style: GoogleFonts.inter(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

Widget Build_Menu_list(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: Column(
      children: [
        ListTile(
          leading: const Icon(Icons.dashboard, color: Colors.black, size: 26),
          title: Text(
            "Dashboard",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Main_page()));
          },
        ),
        ListTile(
          leading:
              const Icon(FontAwesomeIcons.users, color: Colors.black, size: 26),
          title: Text(
            "Create user ",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Create_Admin_Staff()));
          },
        ),
        ListTile(
          leading: const Icon(MdiIcons.orderAlphabeticalAscending),
          title: Text(
            "Oder View",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Order_view()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.report),
          title: Text(
            "Report",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Report_View()));
          },
        ),
      ],
    ),
  );
}
