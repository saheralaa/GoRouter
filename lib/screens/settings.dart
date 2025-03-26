import 'package:firstproject/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 200,
            color: Colors.green,
            width: double.infinity,
          ),
          SizedBox(height: 30),
          Center(
            child: MaterialButton(
              onPressed: () async {
                final String location = context.namedLocation(
                    AppRoutes.detailsScreen,
                    pathParameters: {'productId': "2005"});
                final isSuccess = await context.push<String>(location);
                print('isSuccess: $isSuccess');
              },
              child: Text('Go To'),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: MaterialButton(
              onPressed: () {
                context.pushNamed('/menuScreen');
              },
              child: Text('Go To Menu Screen'),
            ),
          ),
          Center(
            child: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
