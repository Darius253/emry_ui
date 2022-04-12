import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:emry_ui/screens/authentication/otp.dart';
import 'package:emry_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRegisterScreen extends StatefulWidget {
  const SecondRegisterScreen({Key? key}) : super(key: key);

  @override
  State<SecondRegisterScreen> createState() => _SecondRegisterScreenState();
}

class _SecondRegisterScreenState extends State<SecondRegisterScreen> {
  final TextEditingController idcontroller = TextEditingController();
  final TextEditingController vouchercontroller = TextEditingController();
  final TextEditingController sponsorcontroller = TextEditingController();
  final TextEditingController placementcontroller = TextEditingController();
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            "Provide Platform Details",
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
                          Row(
                            children: const [
                              Text(
                                'Identification Type',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                  isExpanded: true,
                                  hint: const Text('Select your ID Type'),
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 24,
                                  ),
                                  items: []
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
                            height: 15,
                          ),
                          TexField(
                            hintText: 'Enter your ID Number here',
                            controller: idcontroller,
                            fieldName: 'ID Number',
                            type: TextInputType.name,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Package',
                            style: TextStyle(color: Colors.black),
                          ),
                          DropdownButtonHideUnderline(
                              child: ListTile(
                                  leading: const Text('Select your package'),
                                  trailing: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 24,
                                  ),
                                  onTap: () => showBottomSheet(context))),
                          const Divider(
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TexField(
                            hintText: 'Eg: 10123123',
                            controller: vouchercontroller,
                            fieldName: 'Voucher Number ',
                            type: TextInputType.name,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TexField(
                            hintText: 'Eg: GH00219219',
                            icon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.green,
                            ),
                            controller: sponsorcontroller,
                            fieldName: 'Sponsor Code ',
                            type: TextInputType.name,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TexField(
                            hintText: 'Eg: GH00219219',
                            icon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.green,
                            ),
                            controller: placementcontroller,
                            fieldName: 'Placement Code ',
                            type: TextInputType.name,
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const OTPScreen()));
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
                      ))
                ]))));
  }

  Future showBottomSheet(BuildContext context) {
    return showStickyFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      headerHeight: 200,
      context: context,
      headerBuilder: (BuildContext context, double offset) {
        return Container();
      },
      anchors: [0, 0.5, 1],
      bodyBuilder: (BuildContext context, double bottomSheetOffset) {
        return SliverChildListDelegate(
          <Widget>[],
        );
      },
    );
  }
}
