import 'package:flutter/material.dart';

class AdFreeScreen extends StatelessWidget {
  const AdFreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.teal,
        child: const Center(
          child: Text('This page has no ads.'),
        ),
      ),
    );
  }
}
