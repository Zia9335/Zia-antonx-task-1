import 'package:flutter/material.dart';
import 'package:w1/Screens/list_screen.dart';
import 'package:w1/Screens/news_and_ex.dart';
import 'package:w1/Screens/top_visted_list.dart';



class HomeScreen0 extends StatelessWidget {
  const HomeScreen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,
      children: [
        //TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
        TopVisitedList(),
        const SizedBox(height: 16),
         NewsAndExibitions(),
        //FriendPostListView(
          //friendPosts: snapshot.data?.friendPosts ?? [],
        //)
      ],
    );
  }
}
