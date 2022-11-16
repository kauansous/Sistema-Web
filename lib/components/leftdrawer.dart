// ignore_for_file: must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

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
      color: Color.fromARGB(255, 2, 40, 98),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Logo",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 50,
            ),
            ItemMenu("Residências"),
            ItemMenu("Residentes"),
            ItemMenu("Chamados"),
          ],
        ),
      ),
    );
  }
}

Widget ItemMenu(String text) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(
          fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
    ),
    onTap: () {},
  );
}
