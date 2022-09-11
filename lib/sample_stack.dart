import 'package:flutter/material.dart';

class SampleStack extends StatefulWidget {
  const SampleStack({Key? key}) : super(key: key);

  @override
  State<SampleStack> createState() => _SampleStackState();
}

class _SampleStackState extends State<SampleStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Center(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              child: const Center(
                child: Text(
                  'Center',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Button 1'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Button 2'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Button 3'),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped');
                    },
                  ),
                  OutlinedButton(onPressed: (){}, child: Text('Button 4'),),
                  TextButton(onPressed: (){}, child: Text('Button 5'),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
