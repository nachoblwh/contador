import 'package:flutter/material.dart';
import '../Themes/app_theme.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCard2(
            name: 'Imagen 1',
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
            name: 'Imagen 2',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
            name: 'Imagen 3',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
