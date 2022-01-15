import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item.dart';
import 'package:language_learning_app/widgets/item.dart';

// ignore: must_be_immutable
class NumberScreen extends StatelessWidget {
  final List<Item> numbers = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: ' Shi',
        enName: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: ' Shichi',
        enName: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
        leading: Icon(Icons.confirmation_number),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Colors.orange,
            itemType: 'numbers',
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}

// this method to recall loop with widget in ListView
// List<Widget> getList(List<Number> numbers) {
//   List<Item> itemList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemList.add(Item(number: numbers[0]));
//   }
//   return itemList;
// }
