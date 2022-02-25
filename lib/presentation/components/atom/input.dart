import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String hint;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final List<TextInputFormatter>? formatter;
  final TextInputType typeInput;
  final bool enableBorder;
  final void Function(String value)? onChange;
  final bool enabled;

  final bool isRequired;

  const Input({
    Key? key,
    this.controller,
    this.enabled = true,
    required this.typeInput,
    this.label,
    required this.hint,
    this.prefixIcon,
    this.sufixIcon,
    this.formatter,
    this.enableBorder = true,
    this.isRequired = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextField(
            enabled: enabled,
            controller: controller,
            decoration: InputDecoration(
              prefixIconConstraints: const BoxConstraints(maxWidth: 30),
              suffixIconConstraints: const BoxConstraints(
                maxWidth: 30,
                maxHeight: 40,
              ),
              prefixIcon: prefixIcon,
              labelText: hint,
              suffixIcon: sufixIcon,
              hintText: hint,
              labelStyle: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 0.2,
                color: enabled ? const Color(0XFF818E9B) : Colors.grey,
              ),
              hintStyle: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                letterSpacing: 0.2,
                color: Colors.grey,
              ),
              border: enableBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  : null,
            ),
            inputFormatters: formatter,
            keyboardType: TextInputType.number,
            onChanged: onChange,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
