
import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';


class NewsAndExibitions extends StatelessWidget {
   NewsAndExibitions({Key? key}) : super(key: key);

  @override

  final list= [
    NewsAndExibitionsCards(),
    NewsAndExibitionsCards(),
    NewsAndExibitionsCards(),
    NewsAndExibitionsCards(),

  ];
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
                'News and Exibitions',
                style:
                TextStyle(
                    color: darkGreen,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),




          Container(
            height: 150,
            color: Colors.grey.shade100,
            child: ListView.separated(
              primary: false,
              scrollDirection: Axis.vertical,
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
    );;
  }
}


class NewsAndExibitionsCards extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130,
        width: 170,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex:1 ,
                child: Container(
                    height: 170,
                    child: Image.asset('images/1.jpg',fit:BoxFit.cover,)),
              ),

              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Expanded(child: Text('POLIN Museum of the History of Poslish Jews',style: TextStyle(fontWeight: FontWeight.bold),)),
                          IconButton(onPressed: null, icon: Icon(
                            Icons.bookmark,
                          ))
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                              Icons.location_on,
                              size: 20.0
                          ),
                          Text('Tamka 49,00-453')
                        ],

                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
