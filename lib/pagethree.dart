import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/page1.dart';
import 'package:providerdemo/provider/providerdemo.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}
class _PagethreeState extends State<Pagethree> {
  @override
  Widget build(BuildContext context) {
    print('page one rebuilded');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('THIS IS PAGE THREE'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return Page1();
                  }));
                },
                child: Text('GO BACK TO PAGE 1')),
            Consumer<Providerdemo>(builder: (context, value, child) {
              print('loop');
              return Text(value.name);
            }),
            SizedBox(
                height: 20,
            ),
            TextButton(
                 onPressed: () {
                 Provider.of<Providerdemo>(context, listen: false)
                    .changevalue();
                },
                child: Text('cahinge value'))
          ],
        ),
      ),
    );
  }
}
