import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final Size size;
  final dynamic child;
  const ContainerCustom({Key? key, required this.size, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Theme.of(context).colorScheme.background,
      child: child,
    );
  }
}
