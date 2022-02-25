import 'package:flutter/material.dart';
import 'package:sucuri_nft/presentation/components/atom/container_custom.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ContainerCustom(
        size: size,
        child: SafeArea(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
