import 'package:flutter/material.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';

const Color darkGreen = Color.fromARGB(255, 4, 33, 28);
const Color textFieldColor = Color.fromARGB(150, 70, 80, 80);
const TextStyle h1TextStyle = TextStyle(
  fontFamily: "Times New Roman",
  fontSize: 20.0,
  color: darkGreen,
  fontWeight: FontWeight.w900,
);

const double pictureHeight = 150.0;
const double pictureWidth = 300.0;
const kLogInLabelStyle = TextStyle(
  fontFamily: "Times New Roman",
  fontSize: 15.0,
  color: textFieldColor,
);

const Color kScaffoldColor = Color.fromARGB(255, 245, 245, 245);

const TextStyle kDropDownTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20,
    fontFamily: "Times New Roman",
    fontWeight: FontWeight.w600);

BoxDecoration kTicketStackContainerDecorationStyle = BoxDecoration(
  color: Colors.grey.shade200,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
);

final newExlistList = [
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
  const NewsAndExibitionsCards(),
];

final List topVisitList = [
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
  TopVisitedCard(),
];

final List listScreenListOfCards = [
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
  TopVisitedCard(
    pictureHeight: pictureHeight,
    pictureWidth: pictureWidth,
  ),
];
