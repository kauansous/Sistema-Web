// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TableHome extends StatelessWidget {
  const TableHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(width: 2)
        ),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Nome',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Endereço',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Ocupação',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Tipo',
                ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Residência 125')),
                DataCell(Text('Rua Paulino Nogueira, 125, Benfica')),
                DataCell(Text('75/75')),
                DataCell(Text('Mista')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Residência 2216')),
                DataCell(Text('Av. da Universidade, 2216, Benfica')),
                DataCell(Text('38/38')),
                DataCell(Text('Feminina')),
              ],
            ),
                  
          ],
        ),
      ),
    );
  }
}
