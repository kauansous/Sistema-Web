// ignore_for_file: must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeftDrawer extends StatelessWidget {
  double? largura;

  LeftDrawer({
    super.key,
    this.largura,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: double.infinity,
      color: Color(0xFFF7F2F9),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 336,
              height: 56,
              padding: const EdgeInsets.only(
                left: 16, right: 8, top: 16, bottom: 16),
              child: Text("Title",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xFF49454F),
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 24,
            ),
            ItemMenu("Residências","assets/Images/Property 1=home.png"),
            SizedBox(
              height: 16,
            ),
            ItemMenu("Residentes","assets/Images/Property 1=users.png"),
            SizedBox(
              height: 16,
            ),
            ItemMenu("Chamados","assets/Images/Property 1=message-square.png"),
          ],
        ),
      ),
    );
  }
}

Widget ItemMenu(String text, String image) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      width: 336,
      height: 56,
      color: Color(0xFFC4C4C4),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          text,
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: Color(0xFF49454F),
              fontWeight: FontWeight.w400),
        ),
        onTap: () {},
      ),
    ),
  );
}
