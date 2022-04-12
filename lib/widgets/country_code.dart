import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget countryCode() {
  TextEditingController controller = TextEditingController();
  return Row(
    children: [
      CountryCodePicker(
        onChanged: _onCountryChange,
        initialSelection: 'GB',
        favorite: const ['+44', 'ENG'],
        showCountryOnly: false,
        alignLeft: false,
        showFlag: true,
        showOnlyCountryWhenClosed: false,
      ),
      const SizedBox(
        width: 5,
      ),
      Expanded(
          flex: 3,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: "123xxxxx",
              hintMaxLines: 12,
            ),
          ))
    ],
  );
}

void _onCountryChange(CountryCode countryCode) {
  if (kDebugMode) {
    print("New Country selected: " + countryCode.toString());
  }
}
