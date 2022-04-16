import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Top Visited',
                    style: TextStyle(
                        color: kDarkGreen, fontWeight: FontWeight.bold),
                  ),
                  Text('View all',
                      style: TextStyle(
                        color: kDarkGreen,
                      )),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                  height: 250,
                  child: CustomListView(
                    list: topVisitList,
                    typeOfScrolling: Axis.horizontal,
                  )),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'News and Exibitions',
                style: TextStyle(color: kDarkGreen, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 550,
                child: CustomListView(
                  list: newExlistList,
                  primary: false,
                  typeOfScrolling: Axis.vertical,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
