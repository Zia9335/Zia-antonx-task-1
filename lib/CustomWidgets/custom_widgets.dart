import 'package:flutter/material.dart';
import 'package:w1/Screens/ticket_screen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: "Segoe UI Semibold",
              fontSize: 15.0,
              color: Color.fromARGB(100, 70, 80, 80),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView(
      {Key? key, required this.list, this.typeOfScrolling, this.primary})
      : super(key: key);

  final List list;
  final dynamic typeOfScrolling;
  final bool? primary;

//Axis.vertical
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: primary ?? true,
      scrollDirection: typeOfScrolling ?? Axis.vertical,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return list[index];
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 16);
      },
    );
  }
}

class TopVisitedCard extends StatelessWidget {
  TopVisitedCard({Key? key, this.pictureHeight, this.pictureWidth})
      : super(key: key);

  double? pictureHeight;
  double? pictureWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TicketScreen(
              images: 'images/1.jpg',
            );
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: 170,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              SizedBox(
                height: pictureHeight ?? 100,
                width: pictureWidth ?? 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Image.asset(
                    'images/1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Expanded(
                      child: Text(
                    'POLIN Museum of the History of Poslish Jews',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.bookmark,
                      ))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.location_on, size: 20.0),
                  Text('Tamka 49,00-453')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewsAndExibitionsCards extends StatelessWidget {
  const NewsAndExibitionsCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TicketScreen(
              images: 'images/1.jpg',
            );
          }));
        },
        child: Container(
          height: 150,
          width: 170,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 130,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'POLIN Museum of the History of Poslish Jews',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.location_on, size: 20.0),
                          Text('Tamka 49,00-453')
                        ],
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.bookmark,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
