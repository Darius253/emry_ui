import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:emry_ui/screens/authentication/register_screen2.dart';
import 'package:emry_ui/widgets/country_code.dart';
import 'package:emry_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();

  String? selectedValue;
  List<String> items = ["Male", "Female", "Other"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  )),
              Text(
                'STEP 1 OF 2',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 114, 114, 114),
                )),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info,
                    color: Colors.grey,
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Join the Emrys Family",
                    style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Please fill in a few details below ",
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 114, 114, 114),
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TexField(
                    hintText: 'e.g., Joe Doe',
                    controller: _nameController,
                    fieldName: 'Name',
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 36, 10, 10))),
                  ),
                  countryCode(),
                  const SizedBox(
                    height: 10,
                  ),
                  TexField(
                    hintText: 'e.g., darius@gmail.com',
                    controller: _emailController,
                    fieldName: 'Email',
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Gender',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 36, 10, 10))),
                  ),
                  DropdownButtonHideUnderline(
                      child: DropdownButton2(
                          isExpanded: true,
                          hint: const Text('Male'),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          })),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TexField(
                    hintText: '23/08/1908',
                    icon: const Icon(Icons.calendar_month),
                    controller: _dobController,
                    fieldName: 'Date of Birth',
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TexField(
                    hintText: 'e.g., Accra',
                    controller: _regionController,
                    fieldName: 'Region',
                    type: TextInputType.name,
                  ),
                  TexField(
                    hintText: 'e.g., Sunyani',
                    controller: _branchController,
                    fieldName: 'Branch',
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecondRegisterScreen()));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
