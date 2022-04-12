import 'package:w1/CustomWidgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';

class NewsAndExibitions extends StatelessWidget {
  NewsAndExibitions(
      {Key? key, required this.primary, required this.typeOfScrolling})
      : super(key: key);
  final bool primary;
  final dynamic typeOfScrolling;
  final list = [
    const NewsAndExibitionsCards(),
    const NewsAndExibitionsCards(),
    const NewsAndExibitionsCards(),
    const NewsAndExibitionsCards(),
    const NewsAndExibitionsCards(),
    const NewsAndExibitionsCards(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'News and Exibitions',
          style: TextStyle(color: darkGreen, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 550,
          child: CustomListView(
            list: list,
            typeOfScrolling: typeOfScrolling,
            primary: primary,
          ),
        ),
      ],
    );
    ;
  }
}
