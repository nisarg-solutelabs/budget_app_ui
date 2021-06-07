import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Utilities'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 230.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SleekCircularSlider(
                min: 0,
                max: 600,
                initialValue: 401,
                onChange: (value) {
                  print(value);
                },
              ),
            ),
          ),
          ItemValueCard(
            name: 'Item 0',
            value: '-RS.7.10',
          ),
          ItemValueCard(
            name: 'Item 1',
            value: '-RS.155.12',
          ),
          ItemValueCard(
            name: 'Item 2',
            value: '-RS.53.24',
          ),
          ItemValueCard(
            name: 'Item 3',
            value: '-RS.54.18',
          ),
          ItemValueCard(
            name: 'Item 4',
            value: '-RS.67.07',
          ),
          ItemValueCard(
            name: 'Item 5',
            value: '-RS.77.189',
          ),
        ],
      ),
    );
  }
}

class ItemValueCard extends StatelessWidget {
  final String name;
  final String value;
  ItemValueCard({this.name, this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
