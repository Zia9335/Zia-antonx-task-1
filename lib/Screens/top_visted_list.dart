import 'package:flutter/material.dart';

import 'package:w1/Components/constants.dart';

class TopVisitedList extends StatelessWidget {
   TopVisitedList({Key? key}) : super(key: key);

    final list= [
  TopVisitedCard(),
      TopVisitedCard(),
      TopVisitedCard(),
      TopVisitedCard(),
      
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
              Text(
                'Top Visited',
                style:
                TextStyle(
                  color: darkGreen,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                  'View all',
               style:   TextStyle(
                 color: darkGreen,
               )
            ),
          ],
        ),
          const SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.grey.shade100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {

                return list[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }
}









class TopVisitedCard extends StatelessWidget {
  const TopVisitedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
     height: 200,
     width: 170,
     decoration: const BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.all(Radius.circular(10))),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex:4 ,
                child: Container(
                    width: 200,
                    child: Image.asset('images/1.jpg',fit:BoxFit.cover,)),
              ),
              const SizedBox(height: 10.0,),
              Expanded(flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Expanded(child: Text('POLIN Museum of the History of Poslish Jews',style: TextStyle(fontWeight: FontWeight.bold),)),
                      IconButton(onPressed: null, icon: Icon(
                        Icons.bookmark,
                      ))
                    ],
                  )),
             const SizedBox(height: 10.0,),
              Expanded(
                flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: const [
                     Icon(
                         Icons.location_on,
                         size: 20.0
                     ),
                     Text('Tamka 49,00-453')
                   ],

              ))
            ],
          ),
        ),
      ),
    );
  }
}
