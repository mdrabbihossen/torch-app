import 'package:flutter/material.dart';

class TorchScreen extends StatefulWidget {
  const TorchScreen({Key? key}) : super(key: key);

  @override
  State<TorchScreen> createState() => _TorchScreenState();
}

class _TorchScreenState extends State<TorchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashLight'),
      ),
    );
  }
}
