import 'package:flutter/material.dart';

class SigninController {
  final hidePassword = ValueNotifier<bool>(false);
  final controllerEmail = TextEditingController();
  final valueEmail = ValueNotifier<String?>(null);
  final controllerPassword = TextEditingController();
  final valuePassword = ValueNotifier<String?>(null);
}
