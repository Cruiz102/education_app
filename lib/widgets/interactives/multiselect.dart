import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Animal {
  final int id;
  final String name;

  Animal({
    this.id,
    this.name,
  });
}

class MultiSelect extends StatefulWidget {
  MultiSelect({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MultiSelectState createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  static List<Animal> _animals = [
    Animal(id: 1, name: "Lio"),
    Animal(id: 2, name: "Flamingo"),
    Animal(id: 3, name: "Hippo"),
    Animal(id: 4, name: "Horse"),
    Animal(id: 5, name: "Tiger"),
    Animal(id: 6, name: "Penguin"),
    Animal(id: 7, name: "Spider"),
    Animal(id: 8, name: "Snake"),
    Animal(id: 9, name: "Bear"),
    Animal(id: 10, name: "Beaver"),
    Animal(id: 11, name: "Cat"),
    Animal(id: 12, name: "Fish"),
    Animal(id: 13, name: "Rabbit"),
    Animal(id: 14, name: "Mouse"),
    Animal(id: 15, name: "Dog"),
    Animal(id: 16, name: "Zebra"),
    Animal(id: 17, name: "Cow"),
    Animal(id: 18, name: "Frog"),
    Animal(id: 19, name: "Blue Jay"),
    Animal(id: 20, name: "Moose"),
    Animal(id: 21, name: "Gecko"),
    Animal(id: 22, name: "Kangaroo"),
    Animal(id: 23, name: "Shark"),
    Animal(id: 24, name: "Crocodile"),
    Animal(id: 25, name: "Owl"),
    Animal(id: 26, name: "Dragonfly"),
    Animal(id: 27, name: "Dolphin"),
  ];
  final _items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<Animal> _selectedAnimals3 = [];
  //List<Animal> _selectedAnimals4 = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              child: MultiSelectChipField(
            height: 200,
            items: _items,
            initialValue: [_animals[4], _animals[7], _animals[9]],
            title: Text("Animals"),
            headerColor: Colors.blue.withOpacity(0.5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue[700], width: 1.8),
            ),
            selectedChipColor: Colors.blue.withOpacity(0.5),
            selectedTextStyle: TextStyle(color: Colors.blue[800]),
            onTap: (values) {
              _selectedAnimals3 = values;
              var b = values[1];
              print(_selectedAnimals3);
              print(b.name);
            },
          )),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
