// ignore_for_file: must_be_immutable, prefer_const_constructors, duplicate_ignore, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  late TextEditingController controller;

  String? name;
  bool? isPassword;
  bool? boolPrefixIcon;
  bool? boolSufixIcon;
  IconData? prefixIcon;
  String? textError;

  Input({
    super.key,
    required this.name,
    required this.controller,
    required this.isPassword,
    required this.boolPrefixIcon,
    required this.boolSufixIcon,
    required this.textError,
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 450,
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
                prefixIcon:
                    widget.boolPrefixIcon! ? Icon(widget.prefixIcon) : null,
                suffixIcon: widget.boolSufixIcon!
                    ? IconButton(
                        icon: Icon(
                            widget.isPassword!
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: widget.isPassword == false
                                ? Colors.blue
                                : Colors.grey),
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
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),         
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
