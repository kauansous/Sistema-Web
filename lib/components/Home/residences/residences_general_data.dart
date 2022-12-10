// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ResidencesGeneralData extends StatefulWidget {
  ResidencesGeneralData({super.key});

  @override
  State<ResidencesGeneralData> createState() => _ResidencesGeneralDataState();
}

class _ResidencesGeneralDataState extends State<ResidencesGeneralData> {
  TextEditingController NomeController = TextEditingController();
  TextEditingController CapacidadeController = TextEditingController();
  TextEditingController DiretorController = TextEditingController();

  String? dropdownvalue;

  var items = [
    "Masculina",
    "Feminina",
    "Mista",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /*Input(
            name: "Nome",
            controller: NomeController,
            isPassword: false,
            boolPrefixIcon: false,
            boolSufixIcon: false,
            textError: 'textError',
            width: null,
            height: 10,
          ),*/
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tipo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0))),
                        isExpanded: true,
                        iconSize: 16,
                        value: dropdownvalue ?? "Masculina",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        }),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Capacidade",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          /*Input(
            name: "Diretor(a)",
            controller: DiretorController,
            isPassword: false,
            boolPrefixIcon: false,
            boolSufixIcon: false,
            textError: 'textError',
            width: null,
            height: 10,
          ),*/
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Spacer(),
              SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 2, 40, 98),
                    ),
                    child: const Text(
                      "Continuar",
                      style: TextStyle(fontSize: 14),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
