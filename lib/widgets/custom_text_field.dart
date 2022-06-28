import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    this.isPhone = false,
    this.isPasswordHidden = false,
    required this.textInputType,
    this.suffixIcon,
    required this.validation,
  }) : super(key: key);

  final String title;
  final String hint;
  final bool isPhone;
  final bool isPasswordHidden;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final String validation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          keyboardType: textInputType,
          obscureText: isPasswordHidden,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: isPhone
                ? CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'EG',
                    favorite: const ['+20', 'EG'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  )
                : null,
            hintText: hint,
            border: const OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: !isPhone ? 10.0 : 0,
              vertical: 20.0,
            ),
          ),
          validator: (value) {
            return value!.isEmpty ? validation : null;
          },
        ),
      ],
    );
  }
}
