import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/utils/app_styles.dart';

class CustomCustomerInput extends StatelessWidget {
  const CustomCustomerInput({
    super.key,
    required this.inputName,
    required this.hintText,
  });

  final String inputName, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputName,
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xFF064060)),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFAFAFA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
