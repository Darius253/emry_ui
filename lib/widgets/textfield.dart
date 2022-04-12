import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TexField extends StatelessWidget {
  final TextEditingController controller;
  final String fieldName;
  final String hintText;
  final TextInputType type;
  final Widget? icon;

  TexField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.fieldName,
    required this.type,
    this.icon,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  fieldName,
                  style: GoogleFonts.manrope(
                      textStyle:
                          const TextStyle(fontSize: 14, color: Colors.black)),
                ),
                const Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            TextFormField(
              controller: controller,
              keyboardType: type,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  suffixIcon: icon,
                  hintText: hintText,
                  hintStyle: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(235, 85, 84, 84)))),
            ),
          ],
        ));
  }
}
