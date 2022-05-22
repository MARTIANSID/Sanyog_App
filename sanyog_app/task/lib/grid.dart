import 'dart:math';

import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o'
    ];
    final _random = new Random();

    return Scaffold(
        body: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 9,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: 9 * 9,
      itemBuilder: (context, index) {
       var x= list[_random.nextInt(list.length)];
        return Container(
          color: Colors.blue,
          child: FlatButton(
            child: Text(x),
            onPressed: () {
              print(x);
            },
          ),
        );
      },
    ));
  }
}
