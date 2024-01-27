import 'package:first_project/class/item_class.dart';
import 'package:first_project/widget/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First PR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Rocket', imagePath: 'image/rocket.png'),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'travel',
                      imagePath: 'image/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'space',
                      imagePath: 'image/space.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'yeah',
                imagePath: 'image/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
