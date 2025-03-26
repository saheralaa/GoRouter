import 'package:firstproject/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            SizedBox(height: 30),
            Center(
              child: MaterialButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.detailsScreen, pathParameters: {
                    'productId': "2005",
                  });
                },
                child: Text('Go To Details'),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: MaterialButton(
                onPressed: () {
                  context.push('${AppRoutes.menuScreen}/nestedcategory');
                },
                child: Text('Go To Settings'),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: MaterialButton(
                onPressed: () {
                  context.goNamed(AppRoutes.categoryScreen);
                },
                child: Text('Go To category'),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Spacer(flex: 2),
            Flexible(
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Center(
              child: Text('Details Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
