import 'package:flutter/material.dart';

import 'liquid_circular_progress_indicator_page.dart';
import 'liquid_custom_progress_indicator_page.dart';
import 'liquid_linear_progress_indicator_page.dart';

void main() => runApp(MaterialApp(home: Example()));

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              child: Container(
                child: Text("Circular"),
                color: Colors.grey[300],

              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCircularProgressIndicatorPage(),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Text("Linear"),
                color: Colors.grey[300],

              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidLinearProgressIndicatorPage(),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Text("Custom"),
                color: Colors.grey[300],

              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCustomProgressIndicatorPage(),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
