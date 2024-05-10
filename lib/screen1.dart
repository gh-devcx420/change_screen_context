import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1(this.changeScreen,{super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Changes the Context'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ready to change Context on Screen?'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: changeScreen,
              child: const Text('Change Context'),
            ),
          ],
        ),
      ),
    );
  }
}
