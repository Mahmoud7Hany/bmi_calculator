// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? numbers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(children: [
              DropdownButton(
                items: [
                  "Mahmoud1",
                  "Mahmoud2",
                  "Mahmoud3",
                  "Mahmoud4",
                  "Mahmoud5",
                  "Mahmoud6"
                ]
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    numbers = val.toString();
                  });
                },
                value: numbers,
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
