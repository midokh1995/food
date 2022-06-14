import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardPopulerFood extends StatelessWidget {
  const CardPopulerFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
      width: 200,
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 18,left: 5),
          child: Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                      fit: BoxFit.cover,

                    )
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20,left: 5),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pasta With Ham',style: TextStyle(
                        fontWeight:FontWeight.bold,
                        color: Colors.grey,
                      ),
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Text('4.2'),
                              Row(
                                children: [
                                  Icon(Icons.star ,color: Colors.indigo,size: 15,),
                                  Icon(Icons.star ,color: Colors.indigo,size: 15,),
                                  Icon(Icons.star ,color: Colors.indigo,size: 15,),
                                  Icon(Icons.star ,color: Colors.indigo,size: 15,),
                                  Icon(Icons.star ,color: Colors.grey,size: 15,),
                                ],
                              ),
                              Text('(12+)'),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Row(
                            children: [
                              Text('\$23',style: TextStyle(
                                fontWeight:FontWeight.bold,
                                color: Colors.grey,
                              ),
                              ),],
                          )
                        ],
                      )
                    ],
                  ),

                ],
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
