import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  var length = Length(
                      removeTrailingZeros:
                          false); //initialize Length object, let's specify that we want to keep the trailing zeros (e.g. 1.00) for stringValue
                  length.convert(LENGTH.meters, 1); //We give 1 meter as input
                  var unit = length.inches; //We get all ther others units
                  print(
                      'name:${unit.name}, value:${unit.value}, stringValue:${unit.stringValue}, symbol:${unit.symbol}');
                },
                child: Text("jkhsdbcjhsd"))
          ],
        ),
      ),
    );
  }
}
