import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Location(),
  ));
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Image(
                    image: AssetImage(
                      "assets/images/map .jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 549),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Select Address',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            'Use Saved Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.yellow, width: 2),
                                    bottom: BorderSide(
                                        color: Colors.yellow, width: 2),
                                    left: BorderSide(
                                        color: Colors.yellow, width: 2),
                                    right: BorderSide(
                                        color: Colors.yellow, width: 2))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 130),
                                  child: Container(
                                      height: MediaQuery.of(context).size.height * .05,
                                      width: MediaQuery.of(context).size.width * .4,
                                   decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(20),
                                       border: Border(
                                           top: BorderSide(
                                               color: Colors.yellow, width: 2),
                                           bottom: BorderSide(
                                               color: Colors.yellow, width: 2),
                                           left: BorderSide(
                                               color: Colors.yellow, width: 2),
                                           right: BorderSide(
                                               color: Colors.yellow, width: 2))),
                                    child: ListTile(
                                      leading: Icon(Icons.location_on,color: Colors.yellow,),
                                      title: Text("Home",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Text('Kachani shop,Sasthamangala',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 55),
                                  child: Text('Thiruvananthapuram, Kerala 695010',style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ListTile(
                            leading: Icon(Icons.add_circle_outline_rounded,color: Colors.yellow,),
                            title: Text('Add New Location',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,),
                          child: ListTile(
                            leading: Icon(Icons.location_on_rounded,color: Colors.yellow,),
                            title: Text('Use Current Location',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * .06,
                            width: MediaQuery.of(context).size.width * .75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Confirm',
                                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.yellow[600])),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
