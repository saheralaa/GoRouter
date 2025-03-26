import 'package:firstproject/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Screen'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 200,
            width: double.infinity,
          ),
          SizedBox(height: 30),
          Center(
            child: Text('Category Screen'),
          ),
          SizedBox(height: 30),
          Center(
            child: MaterialButton(
              onPressed: () {
                context.pushNamed(AppRoutes.detailsScreen, pathParameters: {
                  'productId': "saher alaa",
                });
              },
              child: Text('Go To home Screen'),
            ),
          )
        ],
      ),
    );
  }
}
