import 'package:flutter/material.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';
import 'package:w1/Components/constants.dart';

class TopVisitedList extends StatelessWidget {
  TopVisitedList({Key? key}) : super(key: key);

  final List list = [
    TopVisitedCard(),
    TopVisitedCard(),
    TopVisitedCard(),
    TopVisitedCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Top Visited',
              style: TextStyle(color: darkGreen, fontWeight: FontWeight.bold),
            ),
            Text('View all',
                style: TextStyle(
                  color: darkGreen,
                )),
          ],
        ),
        const SizedBox(height: 10),
        Container(
            height: 250,
            color: Colors.grey.shade100,
            child: CustomListView(
              primary: true,
              list: list,
              typeOfScrolling: Axis.horizontal,
            )),
      ],
    );
  }
}
