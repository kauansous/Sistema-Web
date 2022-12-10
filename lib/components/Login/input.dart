// ignore_for_file: must_be_immutable, prefer_const_constructors, duplicate_ignore, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatefulWidget {
  late TextEditingController controller;

  String? name;
  bool? isPassword;
  bool? boolPrefixIcon;
  bool? boolSufixIcon;
  String? prefixIcon;
  String? textError;
  double? height;
  double? width;
  String? hintText;

  Input({
    super.key,
    required this.name,
    required this.controller,
    required this.isPassword,
    required this.boolPrefixIcon,
    required this.boolSufixIcon,
    required this.textError,
    required this.height,
    required this.width,
    required this.hintText,
    this.prefixIcon,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name!,
            style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.black),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: widget.width!,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              cursorColor: Colors.black,
              obscureText: widget.isPassword!,
              validator: (value) {
                if (value == null) {
                  return "${widget.textError}";
                }

                if (value.trim() == "") {
                  return "${widget.textError}";
                }
              },
              controller: widget.controller,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(widget.height!),
                hintText: widget.hintText!,
                hintStyle: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400),
                prefixIcon:
                    widget.boolPrefixIcon! ? Image.asset(widget.prefixIcon!) : null,
                suffixIcon: widget.boolSufixIcon!
                    ? IconButton(
                        icon: Icon(
                            widget.isPassword!
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: widget.isPassword == false
                                ? Colors.black
                                : Colors.black),
                        onPressed: () {
                          setState(() {
                            if (widget.isPassword == true) {
                              widget.isPassword = false;
                            } else {
                              widget.isPassword = true;
                            }
                          });
                        },
                      )
                    : null,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
