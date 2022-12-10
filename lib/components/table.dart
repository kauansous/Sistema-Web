// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'dart:math';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class MyData extends DataTableSource {
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
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.delete),
          Icon(Icons.delete),
          Icon(Icons.delete),
          Icon(Icons.delete),
        ],
      ),),
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
}

class TableHome extends StatelessWidget {
  TableHome({super.key});

  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: PaginatedDataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: [
            DataColumn2(
              label: Text('ID'),
              size: ColumnSize.L,
            ),
            DataColumn2(
              label: Text('Name'),
            ),
            DataColumn2(
              label: Text('Price'),
            ),
            DataColumn2(
              label: Center(child: Text('Actions')),
            ),
          ],
          source: _data
        ),
      ),
    );
  }
}
