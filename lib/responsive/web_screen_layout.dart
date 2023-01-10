import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "This is a web screen layout".text.xl.make(),
      ),
    );
  }
}
