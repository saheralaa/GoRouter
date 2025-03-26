import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Screen'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 200,
            width: double.infinity,
          ),
          SizedBox(height: 30),
          Center(
            child: Text('Menu Screen'),
          ),
          SizedBox(height: 30),
          Center(
            child: MaterialButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
