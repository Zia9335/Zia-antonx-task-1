import 'package:flutter/material.dart';
import 'package:w1/Components/news_and_exibition.dart';
import 'package:w1/Components/top_visted_list.dart';
import 'package:w1/Components/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Warszawa';

  List<String> options = <String>[
    'Warszawa',
    'Pakistan',
    'Peshawar',
    'Karachi',
    'w'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        primary: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                DropdownButton<String>(
                  borderRadius: BorderRadius.zero,
                  elevation: 0,
                  value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  style: const TextStyle(color: Colors.grey),
                  selectedItemBuilder: (BuildContext context) {
                    return options.map((String value) {
                      return Center(
                        child: Text(
                          dropdownValue,
                          style: kDropDownTextStyle,
                        ),
                      );
                    }).toList();
                  },
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const Spacer(),
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.map_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                hintText: 'Search Museums',
                hintStyle: TextStyle(
                  fontFamily: "Segoe UI Semibold",
                  fontSize: 15.0,
                  color: Color.fromARGB(100, 70, 80, 80),
                ),
              ),
            ),
          ),
          TopVisitedList(),
          const SizedBox(height: 10),
          NewsAndExibitions(
            primary: false,
            typeOfScrolling: Axis.vertical,
          ),
        ],
      ),
    );
  }
}
