import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key, required this.images}) : super(key: key);

  final String images;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  String dropdownValue = '10 am - 8 pm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 250,
            //bottom: 150,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                widget.images,
                //fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: kTicketStackContainerDecorationStyle,
              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'POLIN Museum',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Time New Roman',
                        ),
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.bookmark))
                    ],
                  ),
                  const Text(
                    'It is a historical museum which presents the 1000 years of jewish life in the Polish lands. It is also a place of ... more ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                          ),
                          height: 50,
                          width: 50,
                          child: const Icon(Icons.location_on)),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Anielewicza',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '00-157,Warszawa',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                        ),
                        height: 50,
                        width: 50,
                        child: const Icon(
                          Icons.calendar_today,
                          color: kDarkGreen,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Today open:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '10 am - 8 pm',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  SizedBox(
                    height: 550,
                    child: CustomListView(
                      list: newExlistList,
                      primary: false,
                      typeOfScrolling: Axis.vertical,
                    ),
                  ),
                ]),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15),
                child: Text('By Ticket',
                    style: kElevatorButtonTextStyle,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
