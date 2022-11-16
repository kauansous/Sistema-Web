// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, deprecated_member_use, unused_field, unused_import, depend_on_referenced_packages, unused_element

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:residencia_ufc/components/leftdrawer.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:residencia_ufc/components/table.dart';

/*class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      100,
      (index) => {
            "id": index + 1,
            "title": "Item ${index + 1}",
            "price": Random().nextInt(1000),
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text((_data[index]["id"]).toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }

  @override
  // ignore: todo
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // ignore: todo
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // ignore: todo
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}*/

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double largura = 300;
  bool _alterar = true;

  void updateLargura() {
    setState(() {
      largura = _alterar ? 300.0 : 0;
      _alterar = !_alterar;
    });
  }

  //final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 40, 98),
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
                    height: 75,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 24),
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
                          Icon(Icons.notifications,size: 32,),
                          SizedBox(width: 32,),
                          Icon(Icons.person_pin,size: 32,),
                          Text(
                            "Mônica",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 32,),
                          Icon(Icons.exit_to_app,size: 32,),
                          Text(
                            "Sair",
                            style: TextStyle(
                                fontSize: 32,
                                color: Color.fromARGB(255, 180, 15, 3),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Residências",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 2, 40, 98),
                              ),
                              child: Text(
                                "Cadastrar +",
                                style: TextStyle(fontSize: 24),
                              )),
                        ),
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
