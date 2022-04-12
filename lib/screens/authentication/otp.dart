import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
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
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info,
                  color: Colors.grey,
                ))
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You're almost there!",
                    style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "You only have to enter an OTP code we sent via SMS to your registered phone number +233261140382",
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
                      Text('OTP',
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                      Text('*', style: TextStyle(color: Colors.red))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: controller,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder()),
                  ),
                  const Expanded(child: SizedBox()),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OTPScreen()));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
