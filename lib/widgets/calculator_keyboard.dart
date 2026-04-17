import 'package:flutter/material.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(32),
                child: const Text(
                  '1.234,56',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: StaggeredGrid.count(
                crossAxisCount: 4, // Nossa calculadora tem 4 colunas base
                mainAxisSpacing: 12, // Espaçamento vertical entre botões
                crossAxisSpacing: 12, // Espaçamento horizontal entre botões
                
                // Aqui iteramos sobre CalcButton.values, exatamente como você queria
                children: CalcButton.values.map((button) {
                  return StaggeredGridTile.count(
                    crossAxisCellCount: button.flex, // Usa o flex do seu Enum (1 ou 2)
                    mainAxisCellCount: 1, // Todos os botões têm altura 1
                    child: CalculatorButtonWidget(button: button),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}