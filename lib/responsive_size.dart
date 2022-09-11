import 'package:flutter/material.dart';

class ResponsiveSize extends StatefulWidget {
  const ResponsiveSize({Key? key}) : super(key: key);

  @override
  State<ResponsiveSize> createState() => _ResponsiveSizeState();
}

class _ResponsiveSizeState extends State<ResponsiveSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Size'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
          (i) => Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (j) => Expanded(
                flex: 1,
                child: Container(
                  color: i % 2 == 0 ? Colors.red : Colors.blue,
                  child: Center(
                    child: Text(
                      'Item ${i * 3 + j + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
