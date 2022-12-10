// ignore_for_file: non_constant_identifier_names, unused_local_variable, body_might_complete_normally_nullable, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_stepper/progress_stepper.dart';
import 'package:residencias_ufc/components/Home/residences/residences_general_data.dart';

class RegisterResidences extends StatefulWidget {
  const RegisterResidences({super.key});

  @override
  State<RegisterResidences> createState() => _RegisterResidencesState();
}

class _RegisterResidencesState extends State<RegisterResidences> {
  int ResidencesIndex = 0;

  _dialogBuilder(BuildContext context) {
    return showDialog(
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Material(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              width: 400,
              height: 400,
              color: Colors.white54,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Cadastrar Residências",
                          style: TextStyle(fontSize: 24),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close))
                      ],
                    ),
                    ProgressStepper(
                      width: 270,
                      height: 30,
                      color: Colors.red,
                      progressColor: Colors.green,
                      stepCount: 2,
                      builder: (index) {
                        double widthOfStep = 400 / 3;
                        if (index == 1) {
                          return ProgressStepWithArrow(
                            width: widthOfStep,
                            defaultColor: Colors.red,
                            progressColor: Colors.green,
                            wasCompleted: true,
                            child: Center(child: Text("DADOS GERAIS")),
                          );
                        }
                        return ProgressStepWithChevron(
                          width: widthOfStep,
                          defaultColor: Colors.red,
                          progressColor: Colors.green,
                          wasCompleted: false,
                          child: Center(child: Text("ENDEREÇO")),
                        );
                      },
                    ),
                    IndexedStack(
                      index: ResidencesIndex,
                      children: [
                        ResidencesGeneralData(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 174,
        height: 56,
        child: ElevatedButton(
            onPressed: () {
              _dialogBuilder(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF444343),
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 0,top: 16,bottom: 16),
              child: Row(
                children: [
                  Text(
                    "CADASTRAR",
                    style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.add,color: Colors.black,size: 24,)
                ],
              ),
            )),
      ),
    );
  }
}
