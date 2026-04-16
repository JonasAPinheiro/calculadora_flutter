import 'package:calculadora_flutter/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: CalcButton.values.map((button) {
        return StaggeredGridTile.count(
          crossAxisCellCount: button.flex,
          mainAxisCellCount: 1,
          child: CalculatorButton(button: button),
        );
      }).toList(),
    );
  }
}
