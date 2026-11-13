import 'package:flutter/material.dart';

class NoFoundRouteScreen extends StatelessWidget {
  const NoFoundRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("can't find this route")));
  }
}
