// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, deprecated_member_use, unused_field, unused_import, depend_on_referenced_packages, unused_element

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:residencias_ufc/components/Home/leftdrawer/leftdrawer.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:residencias_ufc/components/Home/residences/register_residences.dart';
import 'package:residencias_ufc/components/table.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double largura = 368;
  bool _alterar = false;

  void updateLargura() {
    setState(() {
      largura = _alterar ? 368 : 0;
      _alterar = !_alterar;
    });
  }

  //final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F2F9),
      body: Row(
        children: [
          AnimatedSize(
            curve: Curves.easeIn,
            duration: Duration(seconds: 1),
            child: LeftDrawer(
              largura: largura,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    color: Color(0xFFF7F2F9),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 32),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: updateLargura,
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 32,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 48,
                              height: 48,
                              color: Color(0xFFD9D9D9),
                              alignment: Alignment.center,
                              child: Image.asset("assets/Images/Property 1=bell.png"),
                            ),
                          ),
                          SizedBox(width: 56),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 174,
                              height: 48,
                              color: Color(0xFFD9D9D9),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 16,top: 10,bottom: 10,right: 8),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 14,backgroundColor: Color(0xFFB3B3B3),),
                                  SizedBox(width: 16),
                                  Text(
                                    "Mônica PRAE",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 56),                                                 
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 99,
                              height: 44,
                              color: Color(0xFFD9D9D9),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 16,top: 10,bottom: 10,right: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Sair",
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 15),
                                  Image.asset("assets/Images/Property 1=Log-out.png")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Residências",
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        RegisterResidences(),
                      ],
                    ),
                  ),
                  TableHome(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
