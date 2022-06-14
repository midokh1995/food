import 'package:flutter/material.dart';
class TopOfferCard extends StatelessWidget {
  const TopOfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 200,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                          fit: BoxFit.cover,

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 5),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pasta With Ham',style: TextStyle(
                          fontWeight:FontWeight.bold,
                          color: Colors.grey,
                        ),
                        ),
                        Text('Pasta With Ham',style: TextStyle(
                          color: Colors.grey,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Text('\$39',style: TextStyle(
                    fontWeight:FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
      ),
    );
  }
}
