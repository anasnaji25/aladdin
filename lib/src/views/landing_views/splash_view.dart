import 'package:flutter/material.dart';

class SpashScreenView extends StatefulWidget {
  const SpashScreenView({super.key});

  @override
  State<SpashScreenView> createState() => _SpashScreenViewState();
}

class _SpashScreenViewState extends State<SpashScreenView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.green[700]),
        alignment: Alignment.center,
        child: Center(
          child: Image.asset("assets/icons/logo_1.png"),
        ),
      ),
    );
  }
}
