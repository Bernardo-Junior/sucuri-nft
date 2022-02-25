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
  final String? value;
  final bool hidePassword;

  final bool isRequired;

  const Input({
    Key? key,
    this.hidePassword = false,
    this.controller,
    this.value,
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
            cursorColor: Colors.white,
            enabled: enabled,
            controller: controller,
            obscureText: hidePassword,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              filled: true,
              fillColor: const Color(0XFF193555),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: value != null && value!.isNotEmpty
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
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
                color: enabled
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.grey,
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
            style: GoogleFonts.dmSans(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 18,
              letterSpacing: 0.2,
              color: const Color(0XFFFCFDFD),
            ),
          ),
        ],
      ),
    );
  }
}
