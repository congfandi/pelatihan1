import 'package:flutter/material.dart';

class ResponsiveLocation extends StatefulWidget {
  const ResponsiveLocation({Key? key}) : super(key: key);

  @override
  State<ResponsiveLocation> createState() => _ResponsiveLocationState();
}

class _ResponsiveLocationState extends State<ResponsiveLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Location'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
          (i) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (j) => Container(
              color: i % 2 == 0 ? Colors.red : Colors.blue,
              width: 50,
              height: 50,
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
