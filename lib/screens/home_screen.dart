import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors_screen.dart';
import 'package:language_learning_app/screens/family_members_screen.dart';
import 'package:language_learning_app/screens/numbers_screen.dart';
import 'package:language_learning_app/screens/phrase_screen.dart';
import 'package:language_learning_app/widgets/components.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('TOKU'),
        leading: Icon(Icons.language_outlined),
      ),
      body: Column(
        children: [
          ContainerWidget(
            text: 'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumberScreen();
              }));
            },
          ),
          ContainerWidget(
            text: 'Family Members',
            color: Colors.green,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersScreen();
              }));
            },
          ),
          ContainerWidget(
            text: 'Colors',
            color: Colors.purple,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsScreen();
              }));
            },
          ),
          ContainerWidget(
            text: 'Phrases',
            color: Colors.blue,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
