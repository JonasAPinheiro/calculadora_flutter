import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  //final String result;

  const CalculatorDisplay({
    super.key,
    //required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        color: const Color(0xfff1e4e4),
        border: Border.all(color: const Color(0xff099a97), width: 6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "12345.00",
        //result,
        style: const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
