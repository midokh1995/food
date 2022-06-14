import 'package:flutter/material.dart';

import 'foodBySections.dart';

final List icons =[Icons.fastfood,Icons.food_bank,Icons.food_bank_outlined,Icons.home,Icons.add];
final List titles = ['fastfood','food_bank','food_bank_outlined','home','add'];

class CardFood extends StatelessWidget {
  const CardFood({Key? key ,required this.title, required this.icon}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(right: 8, left: 8),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodBySections()));
          },
          child: Column(
            children: [
              Container(
                height :70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(icon,color: Colors.indigo,),
              ),
              Padding( padding: EdgeInsets.only(top: 8.0),
                child: Text(title),
              )
            ],
          ),
        )
      )
    );
  }
}
