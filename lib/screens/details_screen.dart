import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String label;

  const DetailsScreen({super.key, required this.label});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab root - ${widget.label}"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Details for ${widget.label} - Counter: $_counter",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text("Increment counter"),
            )
          ],
        ),
      ),
    );
  }
}
