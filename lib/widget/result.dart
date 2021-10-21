import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required double kelvin,
    required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 30),
          // decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suhu dalam Kelvin",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '$_kelvin',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Suhu dalam Reamur",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '$_reamur',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
