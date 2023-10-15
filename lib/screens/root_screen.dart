import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  final String label;

  final String detailsPath;

  const RootScreen({
    super.key,
    required this.label,
    required this.detailsPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab root - $label"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Screen $label",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextButton(
              onPressed: () => context.go(detailsPath),
              child: Text("View details"),
            )
          ],
        ),
      ),
    );
  }
}
