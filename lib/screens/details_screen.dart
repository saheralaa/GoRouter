import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.productId});
  final String productId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 200,
            color: Colors.red,
            width: double.infinity,
          ),
          SizedBox(height: 30),
          Center(
            child: MaterialButton(
              onPressed: () {
                context.pop('saher');
              },
              child: Text('Go To'),
            ),
          ),
          SizedBox(height: 30),
          Text(productId),
          SizedBox(height: 30),
          Center(
            child: Text('Details Screen'),
          ),
        ],
      ),
    );
  }
}
