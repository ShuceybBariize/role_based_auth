import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_admin.dart';

class Order_view extends StatelessWidget {
  const Order_view({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Order View",
            style: GoogleFonts.inter(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          centerTitle: true,
        ),
        drawer: const Menu_admin(),
        body: const Text(
          "Order View",
        ),
      ),
    );
  }
}
