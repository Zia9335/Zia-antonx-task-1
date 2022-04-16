import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';

import '../CustomWidgets/custom_widgets.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Museums",
                    style: kH1TextStyle,
                  ),
                  Icon(Icons.map_outlined),
                ],
              ),
              const TabBar(
                indicatorColor: kDarkGreen,
                labelColor: kDarkGreen,
                tabs: [
                  Tab(
                    text: 'Top visited',
                  ),
                  Tab(
                    text: 'Art',
                  ),
                  Tab(
                    text: 'History',
                  ),
                  Tab(
                    text: 'Military',
                  ),
                  Tab(
                    text: 'Science',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  CustomListView(list: listScreenListOfCards),
                  CustomListView(
                    list: listScreenListOfCards,
                  ),
                  CustomListView(
                    list: listScreenListOfCards,
                  ),
                  CustomListView(
                    list: listScreenListOfCards,
                  ),
                  CustomListView(
                    list: listScreenListOfCards,
                  ),

                  //
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
