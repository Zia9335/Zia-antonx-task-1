import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String dropdownValue = 'Warszawa';
List<String> options = <String>[
  'Warszawa',
  'Pakistan',
  'Peshawar',
  'Karachi',
  'w'
];

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: const Color(0xffFFFFFF),
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.white,
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
              Container(
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(left: 8.0),
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
              ),






              Expanded(
                child: ListView.separated(
                  addAutomaticKeepAlives: false,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      //height: 50,
                      color: Colors.amber[colorCodes[index]],
                      child: Center(child: Text('Entry ${entries[index]}')),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
              Container(
                color: Colors.amberAccent,
                child: Column(
                  children: [
                   const Text(
                      "News and Exibitions"
                    ),
                    Row(
                      children: [
                        Container(child: Image( image: AssetImage('images/1.jpg'),)),

                      ],
                    )


                  ],
                ),
              )
















            ],
          ),
        ),

        // n

        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Icon(
              Icons.settings,
            ),
          ),
        ]),
      ),
    );
  }
}
