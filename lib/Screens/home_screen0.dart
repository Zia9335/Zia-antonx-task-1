import 'package:flutter/material.dart';
import 'package:w1/Screens/list_screen.dart';
import 'package:w1/Screens/news_and_exibition.dart';
import 'package:w1/Screens/top_visted_list.dart';



class HomeScreen0 extends StatefulWidget {


  @override
  State<HomeScreen0> createState() => _HomeScreen0State();
}

class _HomeScreen0State extends State<HomeScreen0> {
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
    return  ListView(
      scrollDirection: Axis.vertical,
      children: [
        //TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontFamily: "Times New Roman",
                                fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList();
                    },
                    items: options
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
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
        const SizedBox(
          height: 10.0,
        ),
        const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
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


        TopVisitedList(),
        const SizedBox(height: 16),
         NewsAndExibitions(),

      ],
    );
  }
}
