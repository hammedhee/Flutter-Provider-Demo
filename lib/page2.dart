import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/pagethree.dart';
import 'package:providerdemo/provider/providerdemo.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is page two ]'),
            ElevatedButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (ctx) {
              return Pagethree();
            }));}, child: Text('go to page three')),
             Text(Provider.of<Providerdemo>(context).name)
          ],
        ),
      ),
    );
  }
}
