import 'package:flutter/material.dart';

class SampleLayout extends StatefulWidget {
  const SampleLayout({Key? key}) : super(key: key);

  @override
  State<SampleLayout> createState() => _SampleLayoutState();
}

class _SampleLayoutState extends State<SampleLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Layout'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
          (i) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (j) => Container(
              color: i % 2 == 0 ? Colors.red : Colors.blue,
              width: MediaQuery.of(context).size.width / 3-8,
              height: MediaQuery.of(context).size.height / 5.5-8,
              child: Center(
                child: Text(
                  'Item ${i * 3 + j + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
