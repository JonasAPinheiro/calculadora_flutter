import 'package:flutter/material.dart';

enum ButtonType { number, operator, action, equal }

enum CalcButton {
  clear(label: 'C', type: ButtonType.action, flex: 2),
  toggleSign(label: '%', type: ButtonType.action),
  divide(label: '/', type: ButtonType.operator),

  seven(label: '7', type: ButtonType.number),
  eight(label: '8', type: ButtonType.number),
  nine(label: '9', type: ButtonType.number),
  multiply(label: '×', type: ButtonType.operator),

  four(label: '4', type: ButtonType.number),
  five(label: '5', type: ButtonType.number),
  six(label: '6', type: ButtonType.number),
  subtract(label: '−', type: ButtonType.operator),

  one(label: '1', type: ButtonType.number),
  two(label: '2', type: ButtonType.number),
  three(label: '3', type: ButtonType.number),
  add(label: '+', type: ButtonType.operator),

  zero(label: '0', type: ButtonType.number),
  dot(label: '.', type: ButtonType.number),
  equals(label: '=', type: ButtonType.equal, flex: 2);

  const CalcButton({required this.label, required this.type, this.flex = 1});

  final String label;
  final ButtonType type;
  final int flex;

  Color backgroundColor(BuildContext context) {
    switch (type) {
      case ButtonType.action:
        return const Color.fromARGB(255, 212, 212, 210);
      case ButtonType.operator:
        return const Color.fromARGB(255, 176, 27, 235);
      case ButtonType.number:
        return const Color.fromARGB(255, 51, 51, 51);
      case ButtonType.equal:
        return const Color.fromARGB(255, 133, 16, 211);
    }
  }

  Color foregroundColor() {
    switch (type) {
      case ButtonType.action:
        return Colors.black;
      case ButtonType.operator:
      case ButtonType.number:
      case ButtonType.equal:
        return Colors.white;
    }
  }
}

class CalculatorButton extends StatelessWidget {
  final CalcButton button;
  const CalculatorButton({super.key, required this.button});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: button.backgroundColor(context),
        foregroundColor: button.foregroundColor(),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {},
      child: Text(
        button.label,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
