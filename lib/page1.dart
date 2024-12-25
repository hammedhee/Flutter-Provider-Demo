import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/page2.dart';
import 'package:providerdemo/provider/providerdemo.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(' THIS IS PAGE TWO '),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return Page2();
                }));
              },
              child: Text('GO TO PAGE 2'),
            ),
            Text(Provider.of<Providerdemo>(context).name)
          ],
        ),
      ),
    );
  }
}
