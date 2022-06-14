import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../component/appTitle.dart';
import '../component/cardFood.dart';
import '../component/cardPopulerFood.dart';
import '../component/searchBar.dart';
import '../component/topOfferCard.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTitle(title: 'Explore',fontSize: 30),
                  SearchBar(),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        itemCount: titles.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CardFood(icon :icons[index],title :titles[index]);
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: AppTitle(title: 'PopulerFood',fontSize: 17),
                  ),
                  Container(
                    height: 190,
                    child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CardPopulerFood();
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: AppTitle(title: 'TopOffers',fontSize: 17),
                  ),
                  Container(
                    height: 400,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return TopOfferCard();
                        }),
                  ),

                ],
              ),
            )
          ),
        ),
    );
  }

}
